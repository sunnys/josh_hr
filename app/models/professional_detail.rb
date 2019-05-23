class ProfessionalDetail < ApplicationRecord
    belongs_to :user

    has_many :appointments, dependent: :destroy
    has_many :promotions, dependent: :destroy
    has_many :reversions, dependent: :destroy
    has_many :disciplines, dependent: :destroy
    has_many :medical_cats, dependent: :destroy

    has_many :rule_periods, dependent: :destroy
    has_many :posting_records, dependent: :destroy
    has_many :leave_records , dependent: :destroy
    has_many :absenses , dependent: :destroy
    has_many :desertions , dependent: :destroy
    has_many :service_particulars , dependent: :destroy



    accepts_nested_attributes_for :appointments
    accepts_nested_attributes_for :promotions
    accepts_nested_attributes_for :reversions
    accepts_nested_attributes_for :disciplines
    accepts_nested_attributes_for :medical_cats
    accepts_nested_attributes_for :rule_periods
    accepts_nested_attributes_for :posting_records
    accepts_nested_attributes_for :leave_records
    accepts_nested_attributes_for :absenses
    accepts_nested_attributes_for :desertions

    after_save :update_hierarchy

    def custom_label_method
        "#{army_no}"
    end

    def update_hierarchy
        if !self.reporting_officer_army_no.nil?
            h = Hierarchy.find_or_initialize_by(user_id: self.user.id)
            ro = User.find_by(army_no: self.reporting_officer_army_no)
            if !ro.nil?
                h.ro_id = ro.id
            end
            h.save!
        end
    end
    
end
