class ProfessionalDetail < ApplicationRecord
    belongs_to :user

    has_many :appointments, dependent: :destroy
    has_many :promotions, dependent: :destroy
    has_many :reversions, dependent: :destroy
    has_many :disciplines, dependent: :destroy
    has_many :medical_cats, dependent: :destroy
    has_many :leaves , dependent: :destroy
    has_many :absenses , dependent: :destroy
    has_many :desertions , dependent: :destroy

    accepts_nested_attributes_for :appointments
    accepts_nested_attributes_for :promotions
    accepts_nested_attributes_for :reversions
    accepts_nested_attributes_for :disciplines
    accepts_nested_attributes_for :medical_cats
    accepts_nested_attributes_for :leaves
    accepts_nested_attributes_for :absenses
    accepts_nested_attributes_for :desertions

    def custom_label_method
        "#{army_no}"
    end
end
