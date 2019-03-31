class ProfilesController < ApplicationController
  before_action :set_user, only: [:show, :embodiment_report, :embodiment_report_pdf]

  # GET /profiles
  # GET /profiles.json
  def index
    @users = User.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
  end

  def embodiment_report
    @total_service_days = @user.professional_detail.rule_periods.map{ |rp| [rp.total_embodied_day, rp.total_disembodied_day] }.flatten.compact.sum
    @total_emb_service_days = @user.professional_detail.rule_periods.map{ |rp| rp.total_embodied_day }.flatten.compact.sum
    @total_disemb_service_days = @user.professional_detail.rule_periods.map{ |rp| rp.total_disembodied_day }.flatten.compact.sum
  end

  def embodiment_report_pdf
    @total_service_days = @user.professional_detail.rule_periods.map{ |rp| [rp.total_embodied_day, rp.total_disembodied_day] }.flatten.compact.sum
    @total_emb_service_days = @user.professional_detail.rule_periods.map{ |rp| rp.total_embodied_day }.flatten.compact.sum
    @total_disemb_service_days = @user.professional_detail.rule_periods.map{ |rp| rp.total_disembodied_day }.flatten.compact.sum
    # respond_to do |format|
    #   format.html
    #   format.pdf do
    #       render pdf: "Invoice No. #{@invoice.id}",
    #       page_size: 'A4',
    #       template: "profiles/embodiment_report.html.erb",
    #       layout: "application.html",
    #       orientation: "Landscape",
    #       lowquality: true,
    #       zoom: 1,
    #       dpi: 75
    #   end
    # end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.preload([:personel_detail, :professional_detail]).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.fetch(:user, {})
    end
end
