class ApplicationController < ActionController::Base
    before_action :set_paper_trail_whodunnit
    def after_sign_in_path_for(resource)
        "/dashboard"
    end
end
