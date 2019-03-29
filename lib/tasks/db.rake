namespace :db do
    desc "Dumps the database to db/APP_NAME.dump"
    task :dump => :environment do
      cmd = nil
      with_config do |app, host, db, user, password|
        cmd = "PGPASSWORD=#{password} pg_dump --host #{host} --username #{user} --verbose --clean --no-owner --no-acl --format=c #{db} > #{Rails.root}/db/#{app}.dump"
      end
      puts cmd
      exec cmd
    end
  
    desc "Restores the database dump at db/APP_NAME.dump."
    task :restore => :environment do
      cmd = nil
      with_config do |app, host, db, user|
        cmd = "pg_restore --verbose --host #{host} --username #{user} --clean --no-owner --no-acl --dbname #{db} #{Rails.root}/db/#{app}.dump"
      end
      Rake::Task["db:drop"].invoke
      Rake::Task["db:create"].invoke
      puts cmd
      exec cmd
    end
  
    task :update_block => :environment do
        Rake::Task["db:dump"].invoke
        key = ActiveSupport::EncryptedFile.generate_key

    end
    private
  
    def with_config
      yield Rails.application.class.parent_name.underscore,
        ActiveRecord::Base.connection_config[:host],
        ActiveRecord::Base.connection_config[:database],
        ActiveRecord::Base.connection_config[:username],
        ActiveRecord::Base.connection_config[:password]
    end

    def create_block(prev_hash, file)
        data = file.read()
        pem = File.read('/home/sunny/.ssh/id_rsa')
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
        signed = sign(block, pem);
        hashed = sha256(Base64.strict_encode64(signed.to_json));
        block[:hash] = hashed
        {block: block, data: encrypted};
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
        encrypted = Base64.encode64(cipher.update(data) + cipher.final())
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

    file = File.open('/home/sunny/blockchain/josh_hr/db/josh_hr.dump')
    main_params = create_block("B1CDA52E775A5B8900CD3115A8ADF15BFFDE5851A4D0A24120708794BCB5BC98", file)
    url = "/api/v1/blocks"
    res = send_block(url, main_params)
    res
end