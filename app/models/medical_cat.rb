class MedicalCat < ApplicationRecord
    belongs_to :professional_detail
    has_many :hospital_admission_histories, dependent: :destroy

    accepts_nested_attributes_for :hospital_admission_histories
end
