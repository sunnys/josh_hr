class MedicalCatsController < ApplicationController
  before_action :set_medical_cat, only: [:show, :edit, :update, :destroy]

  # GET /medical_cats
  # GET /medical_cats.json
  def index
    @medical_cats = MedicalCat.all
    @medical_cat = MedicalCat.new
  end

  # GET /medical_cats/1
  # GET /medical_cats/1.json
  def show
  end

  # GET /medical_cats/new
  def new
    @medical_cat = MedicalCat.new
  end

  # GET /medical_cats/1/edit
  def edit
  end

  # POST /medical_cats
  # POST /medical_cats.json
  def create
    @medical_cat = MedicalCat.new(medical_cat_params)

    respond_to do |format|
      if @medical_cat.save
        format.html { redirect_to @medical_cat, notice: 'Medical cat was successfully created.' }
        format.json { render :show, status: :created, location: @medical_cat }
      else
        format.html { render :new }
        format.json { render json: @medical_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_cats/1
  # PATCH/PUT /medical_cats/1.json
  def update
    respond_to do |format|
      if @medical_cat.update(medical_cat_params)
        format.html { redirect_to @medical_cat, notice: 'Medical cat was successfully updated.' }
        format.json { render :show, status: :ok, location: @medical_cat }
      else
        format.html { render :edit }
        format.json { render json: @medical_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_cats/1
  # DELETE /medical_cats/1.json
  def destroy
    @medical_cat.destroy
    respond_to do |format|
      format.html { redirect_to medical_cats_url, notice: 'Medical cat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_cat
      @medical_cat = MedicalCat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_cat_params
      params.require(:medical_cat).permit(:id, :date, :nature_of_emergency, :permanent, :period_year, :period_month, :hospitalized, :professional_detail_id, :created_at, :updated_at, :shape)
    end
end
