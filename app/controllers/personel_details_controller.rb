class PersonelDetailsController < ApplicationController
  before_action :set_personel_detail, only: [:show, :edit, :update, :destroy, :edit_more_details, :update_more_details]

  # GET /personel_details
  # GET /personel_details.json
  def index
    @personel_details = PersonelDetail.all
    @personel_detail = PersonelDetail.new
  end

  # GET /personel_details/1
  # GET /personel_details/1.json
  def show
  end

  # GET /personel_details/new
  def new
    @personel_detail = PersonelDetail.new
  end

  # GET /personel_details/1/edit
  def edit
  end

  # POST /personel_details
  # POST /personel_details.json
  def create
    army_no = params[:personel_detail][:army_no]
    email = params[:personel_detail][:email] rescue (army_no.to_s + "@joshhr.in")
    username = params[:personel_detail][:name]
    @user = User.create!(email:  email, army_no: army_no, username: username, password: "password")
    @personel_detail = PersonelDetail.new(personel_detail_params)
    @personel_detail.user_id = @user.id
    respond_to do |format|
      if @personel_detail.save
        ProfessionalDetail.create!(user_id: @user.id, army_no: @personel_detail.army_no)
        format.html { redirect_to personel_details_url, notice: 'Personel detail was successfully created.' }
        format.json { render :show, status: :created, location: @personel_detail }
      else
        format.html { render :new }
        format.json { render json: @personel_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personel_details/1
  # PATCH/PUT /personel_details/1.json
  def update
    respond_to do |format|
      if @personel_detail.update(personel_detail_params)
        format.html { redirect_to @personel_detail, notice: 'Personel detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @personel_detail }
      else
        format.html { render :edit }
        format.json { render json: @personel_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personel_details/1
  # DELETE /personel_details/1.json
  def destroy
    @personel_detail.destroy
    respond_to do |format|
      format.html { redirect_to personel_details_url, notice: 'Personel detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def edit_more_details

  end

  def update_more_details
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personel_detail
      @personel_detail = PersonelDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personel_detail_params
      params.require(:personel_detail).permit(:id, :army_no, :father_name, :rank, :appointment, :name, :religion, :main_class, :sub_class, :med_cat, :mothertongue, :date_of_enrolment, :date_of_birth, :age_on_enrolment, :attestation, :date_of_attestation, :driving_license_no, :mobile_no, :adhar_no, :pancard_no, :email, :photo, :family_photo, :user_id, :created_at, :updated_at, :trade, home_address_attributes: [:id, :house_no, :street, :town, :post_office, :to_and_distance_from, :police_station, :tehsil, :district, :state, :nrs_and_distance_from_home, :_destroy], family_details_attributes: [:id, :type, :name, :relation_type, :address, :phone_number, :date_of_birth, :photo, :_destroy], bank_accounts_details: [:id, :ifsc_code, :micr_no, :bank_code, :joint, :account_number, :_destroy], educations: [:id, :degree_name, :from, :to, :institute_name, :degree_type, :_destroy])
    end
end
