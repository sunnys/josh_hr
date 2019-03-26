class PersonelDetail < ApplicationRecord
    belongs_to :user
    has_one :home_address
    has_many :family_details, dependent: :destroy
    has_many :dependent_cards, dependent: :destroy
    has_many :bank_accounts, dependent: :destroy
    has_many :investments, dependent: :destroy
    has_many :loans, dependent: :destroy
    has_many :educations, dependent: :destroy
    has_many :sports, dependent: :destroy
    has_many :professional_training_and_courses, dependent: :destroy

    accepts_nested_attributes_for :home_address
    accepts_nested_attributes_for :family_details
    accepts_nested_attributes_for :dependent_cards
    accepts_nested_attributes_for :bank_accounts
    accepts_nested_attributes_for :investments
    accepts_nested_attributes_for :loans
    accepts_nested_attributes_for :educations
    accepts_nested_attributes_for :sports
    accepts_nested_attributes_for :professional_training_and_courses

    mount_uploader :photo, PhotoUploader
    mount_uploader :family_photo, FamilyPhotoUploader


    
    def custom_label_method
        "#{army_no}"
    end
end
