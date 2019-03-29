class MainPageImage < ApplicationRecord
    mount_uploader :pic1, PhotoUploader
    mount_uploader :pic2, FamilyPhotoUploader
end
