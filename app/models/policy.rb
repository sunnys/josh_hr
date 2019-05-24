class Policy < ApplicationRecord
    has_paper_trail
    mount_uploader :doc, PhotoUploader
end
