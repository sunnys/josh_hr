class MedicalCat < ApplicationRecord
    has_paper_trail
    belongs_to :professional_detail
    has_many :hospital_admission_histories, dependent: :destroy

    accepts_nested_attributes_for :hospital_admission_histories
    rails_admin do
        create do 
            field :professional_detail_id, :enum do
                enum do
                    ProfessionalDetail.all.collect {|p| [p.user.army_no, p.id]}
                end
            end
            field :date
            field :nature_of_emergency
            field :permanent
            field :period_year
            field :period_month
            field :hospitalized
            
            field :shape , :enum do
                enum do
                    MasterShape.all.collect{ |p| [p.title, p.title]}
                end
            end
        end

        edit do
            field :professional_detail_id, :enum do
                enum do
                    ProfessionalDetail.all.collect {|p| [p.user.army_no, p.id]}
                end
            end
            field :date
            field :nature_of_emergency
            field :permanent
            field :period_year
            field :period_month
            field :hospitalized

            field :shape , :enum do
                enum do
                    MasterShape.all.collect{ |p| [p.title, p.title]}
                end
            end
        end
    end
end
