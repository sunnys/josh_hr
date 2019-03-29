namespace :blockchain do
    desc "Dumps the database to db/APP_NAME.dump"
    task :dump => :environment do
      cmd = nil
      with_config do |app, host, db, user, password|
        cmd = "PGPASSWORD=#{password} pg_dump --host #{host} --username #{user} --verbose --clean --no-owner --no-acl --format=c #{db} > #{Rails.root}/db/#{app}-#{Date.today.to_s}.dump"
      end
      puts cmd
      exec cmd
    end
  
    # desc "Restores the database dump at db/APP_NAME.dump."
    # task :restore => :environment do
    #   cmd = nil
    #   with_config do |app, host, db, user|
    #     cmd = "pg_restore --verbose --host #{host} --username #{user} --clean --no-owner --no-acl --dbname #{db} #{Rails.root}/db/#{app}.dump"
    #   end
    #   Rake::Task["db:drop"].invoke
    #   Rake::Task["db:create"].invoke
    #   puts cmd
    #   exec cmd
    # end
  
    task :start_transaction => :environment do
      file = File.open("#{Rails.root}/db/josh_hr-#{Date.today.to_s}.dump")
      url = "/api/v1/blocks"
      prev_hash = analytic_get(url)["entries"].first["hash"]
      pem = File.read("#{Dir.home}/.ssh/id_rsa")
      main_params = create_block(prev_hash, file, pem)
      res = send_block(url, main_params)
      p res
      res
    end

    task :update_block => :environment do
      Rake::Task["blockchain:dump"].invoke
      Rake::Task["blockchain:start_transaction"].invoke
    end


    

  private
  
    def with_config
      yield Rails.application.class.parent_name.underscore,
        ActiveRecord::Base.connection_config[:host],
        ActiveRecord::Base.connection_config[:database],
        ActiveRecord::Base.connection_config[:username],
        ActiveRecord::Base.connection_config[:password]
    end

    def create_block(prev_hash, file, pem)
        data = file.read()
        fileKey   = generate_key()
        encrypted = encrypt(data, fileKey)
        block = {
            type: 'file_create',
            prev: prev_hash,
            timestamp: Time.now,
            data: {
                file_name: File.basename(file),
                file_type: File.extname(file),
                file_size: file.size,
                file_hash: sha256(encrypted),
                file_key:  encrypt(pem, fileKey)
            }
        }
        signed = sign(block, pem)
        encoded = {}
        encoded[:creator] = signed[:creator]
        encoded[:signature] = signed[:signature]
        encoded[:data] = signed[:data]
        encoded[:type] = signed[:type]
        encoded[:prev] = signed[:prev]
        encoded[:timestamp] = signed[:timestamp]
        encoded = encoded.as_json.to_json
        hashed = sha256(encoded)
        block[:hash] = hashed.upcase
        {block: block, data: encrypted}
    end
  
    def generate_key
        cipher = OpenSSL::Cipher::AES256.new :CBC
        key = cipher.random_key
        iv = cipher.random_iv
        final_key = Base64.encode64(key + iv)
        final_key
    end

    def encrypt(data, final_key)
        cipher = OpenSSL::Cipher::AES256.new :CBC
        cipher.encrypt()
        key = Base64.decode64(final_key).first(32)
        iv = Base64.decode64(final_key).last(16)
        cipher.key = key
        cipher.iv = iv
        encrypted = Base64.strict_encode64(cipher.update(data) + cipher.final())
        encrypted
    end

    def sign(block, pem)
        require 'openssl'
        require 'base64'
        rsa = OpenSSL::PKey::RSA.new(pem)
        pub = rsa.public_key.to_s
        digest = OpenSSL::Digest::SHA256.new
        signature = rsa.sign(digest,block.to_json).upcase
        block[:signature] = Base64.strict_encode64(signature)
        block[:creator] = Base16.encode16(pub)
        block
    end

    def sha256(data)
        Digest::SHA256.hexdigest(data)
    end

    def send_block(url, main_params)
        require 'net/http'
        new_analitics_api_domain = Rails.application.config.new_analytics_domain
        if !new_analitics_api_domain.nil?
          uri = URI.parse(URI.escape(new_analitics_api_domain + url))
          header = {'Content-Type': 'application/json', 'accept': 'application/json'}
          http = Net::HTTP.new(uri.host, uri.port)
          request = Net::HTTP::Post.new(uri.request_uri, header)
          request.body = main_params.to_json
          response = http.request(request)
          data = JSON.parse(response.body) rescue {}
          data
        else
          {}
        end
    end

    def analytic_get(param_url)
      require 'net/http'
      new_analitics_api_domain = Rails.application.config.new_analytics_domain
      url = param_url
      if !new_analitics_api_domain.nil? and !url.nil?
        url = URI::parse(new_analitics_api_domain + param_url)
        req = Net::HTTP::Get.new(url.to_s)
        res = Net::HTTP.start(url.host, url.port) {|http|
        http.request(req)
        }
        JSON.parse(res.body) rescue {}
      else
        {}
      end
    end

end