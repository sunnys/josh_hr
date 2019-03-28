class Unit < ApplicationRecord
    has_many :unit_galleries, dependent: :destroy
    has_many :commanding_officers, dependent: :destroy
    has_many :battle_honors, dependent: :destroy
    has_many :notable_people, dependent: :destroy
    has_many :champions, dependent: :destroy

    accepts_nested_attributes_for :unit_galleries
    accepts_nested_attributes_for :commanding_officers
    accepts_nested_attributes_for :battle_honors
    accepts_nested_attributes_for :notable_people
    accepts_nested_attributes_for :champions

    mount_uploader :unit_logo, PhotoUploader
end
