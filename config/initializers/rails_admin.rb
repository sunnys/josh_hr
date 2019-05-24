RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'User' do
    object_label_method do
      :custom_label_method
    end
  end

  config.model 'PersonelDetail' do
    object_label_method do
      :custom_label_method
    end
  end

  config.model 'ProfessionalDetail' do
    object_label_method do
      :custom_label_method
    end
  end

  config.model 'Wife' do
    visible false
  end

  config.model 'Kid' do
    visible false
  end

  config.model 'OtherRelation' do
    visible false
  end

  config.model 'FamilyDetail' do
    visible false
  end

  config.model 'BankAccount' do
    visible false
  end

  config.model 'Education' do
    visible false
  end

  config.model 'HomeAddress' do
    visible false
  end

  config.model 'HospitalAdmissionHistory' do
    visible false
  end

  config.model 'Investment' do
    visible false
  end

  config.model 'Loan' do
    visible false
  end

  config.model 'MedicalCat' do
    visible true
  end

  config.model 'ProfessionalTrainingAndCourse' do
    visible false
  end

  config.model 'Sport' do
    visible false
  end

  config.model 'DependentCard' do
    visible false
  end

  config.model 'Discipline' do
    visible false
  end

  config.model 'Service' do
    visible false
  end

  config.model 'Appointment' do
    visible false
  end

  config.model 'Promotion' do
    visible false
  end

  config.model 'Reversion' do
    visible false
  end

  config.model 'TechTradeTest' do
    visible false
  end

  config.model 'PromotionCadre' do
    visible false
  end

  config.model 'Absense' do
    visible false
  end

  config.model 'Desertion' do
    visible false
  end

  config.model 'RulePeriod' do
    visible false
  end

  config.model 'PostingRecord' do
    visible false
  end
end
