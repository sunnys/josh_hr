class PostingRecordsController < ApplicationController
  before_action :set_posting_record, only: [:show, :edit, :update, :destroy]

  # GET /posting_records
  # GET /posting_records.json
  def index
    @posting_records = PostingRecord.all
    @posting_record = PostingRecord.new
  end

  # GET /posting_records/1
  # GET /posting_records/1.json
  def show
  end

  # GET /posting_records/new
  def new
    @posting_record = PostingRecord.new
  end

  # GET /posting_records/1/edit
  def edit
  end

  # POST /posting_records
  # POST /posting_records.json
  def create
    @posting_record = PostingRecord.new(posting_record_params)

    respond_to do |format|
      if @posting_record.save
        format.html { redirect_to @posting_record, notice: 'Posting record was successfully created.' }
        format.json { render :show, status: :created, location: @posting_record }
      else
        format.html { render :new }
        format.json { render json: @posting_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posting_records/1
  # PATCH/PUT /posting_records/1.json
  def update
    respond_to do |format|
      if @posting_record.update(posting_record_params)
        format.html { redirect_to @posting_record, notice: 'Posting record was successfully updated.' }
        format.json { render :show, status: :ok, location: @posting_record }
      else
        format.html { render :edit }
        format.json { render json: @posting_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posting_records/1
  # DELETE /posting_records/1.json
  def destroy
    @posting_record.destroy
    respond_to do |format|
      format.html { redirect_to posting_records_url, notice: 'Posting record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_posting_record
      @posting_record = PostingRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def posting_record_params
      params.require(:posting_record).permit(:id, :from, :to, :peace_duty, :field_dduty, :total_peace_duty_day, :total_field_duty_day, :professional_detail_id, :created_at, :updated_at)
    end
end
