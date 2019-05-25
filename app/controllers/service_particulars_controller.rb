class ServiceParticularsController < ApplicationController
  before_action :set_service_particular, only: [:show, :edit, :update, :destroy]

  # GET /service_particulars
  # GET /service_particulars.json
  def index
    @service_particulars = ServiceParticular.all
    @service_particular = ServiceParticular.new
  end

  # GET /service_particulars/1
  # GET /service_particulars/1.json
  def show
  end

  # GET /service_particulars/new
  def new
    @service_particular = ServiceParticular.new
  end

  # GET /service_particulars/1/edit
  def edit
  end

  # POST /service_particulars
  # POST /service_particulars.json
  def create
    @service_particular = ServiceParticular.new(service_particular_params)

    respond_to do |format|
      if @service_particular.save
        format.html { redirect_to service_particulars_url, notice: 'Service particular was successfully created.' }
        format.json { render :show, status: :created, location: @service_particular }
      else
        format.html { render :new }
        format.json { render json: @service_particular.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_particulars/1
  # PATCH/PUT /service_particulars/1.json
  def update
    respond_to do |format|
      if @service_particular.update(service_particular_params)
        format.html { redirect_to @service_particular, notice: 'Service particular was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_particular }
      else
        format.html { render :edit }
        format.json { render json: @service_particular.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_particulars/1
  # DELETE /service_particulars/1.json
  def destroy
    @service_particular.destroy
    respond_to do |format|
      format.html { redirect_to service_particulars_url, notice: 'Service particular was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_particular
      @service_particular = ServiceParticular.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_particular_params
      params.require(:service_particular).permit(:professional_detail_id, :date_from, :date_to, :type_of_service, :days, :autority)
    end
end
