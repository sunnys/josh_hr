class LeaveRecordsController < ApplicationController
  before_action :set_leave_record, only: [:show, :edit, :update, :destroy]

  # GET /leave_records
  # GET /leave_records.json
  def index
    @leave_records = LeaveRecord.all
    @leave_record = LeaveRecord.new
  end

  # GET /leave_records/1
  # GET /leave_records/1.json
  def show
  end

  # GET /leave_records/new
  def new
    @leave_record = LeaveRecord.new
  end

  # GET /leave_records/1/edit
  def edit
  end

  # POST /leave_records
  # POST /leave_records.json
  def create
    @leave_record = LeaveRecord.new(leave_record_params)

    respond_to do |format|
      if @leave_record.save
        format.html { redirect_to @leave_record, notice: 'Leave record was successfully created.' }
        format.json { render :show, status: :created, location: @leave_record }
      else
        format.html { render :new }
        format.json { render json: @leave_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leave_records/1
  # PATCH/PUT /leave_records/1.json
  def update
    respond_to do |format|
      if @leave_record.update(leave_record_params)
        format.html { redirect_to @leave_record, notice: 'Leave record was successfully updated.' }
        format.json { render :show, status: :ok, location: @leave_record }
      else
        format.html { render :edit }
        format.json { render json: @leave_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_records/1
  # DELETE /leave_records/1.json
  def destroy
    @leave_record.destroy
    respond_to do |format|
      format.html { redirect_to leave_records_url, notice: 'Leave record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leave_record
      @leave_record = LeaveRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leave_record_params
      params.require(:leave_record).permit(:id, :type_of_leave, :from, :to, :total_no_of_days, :date_of_rejoining, :professional_detail_id, :created_at, :updated_at, :not_returned_on_date, :al, :cl)
    end
end
