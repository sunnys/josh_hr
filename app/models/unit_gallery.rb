class UnitGallery < ApplicationRecord
    has_paper_trail
    belongs_to :unit
    mount_uploader :photo, PhotoUploader
end
