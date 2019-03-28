class UnitGallery < ApplicationRecord
    belongs_to :unit
    mount_uploader :photo, PhotoUploader
end
