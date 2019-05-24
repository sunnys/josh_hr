class HospitalAdmissionHistory < ApplicationRecord
    has_paper_trail
    belongs_to :medical_cat
end
