class MainPageImage < ApplicationRecord
    has_paper_trail
    mount_uploader :pic1, PhotoUploader
    mount_uploader :pic2, FamilyPhotoUploader
end
