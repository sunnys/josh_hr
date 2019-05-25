class ApplicationController < ActionController::Base
    before_action :set_paper_trail_whodunnit
    def after_sign_in_path_for(resource)
        if resource.officer
            "/dashboard"
        elsif resource.admin?
            "/admin"
        elsif resource.clerk
            "/personel_details"
        else
            "/personel_details"
        end
    end
end
