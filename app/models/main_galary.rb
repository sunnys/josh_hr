class MainGalary < ApplicationRecord
    has_paper_trail
    mount_uploader :photo, PhotoUploader
end
