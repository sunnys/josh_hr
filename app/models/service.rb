class Service < ApplicationRecord
    has_paper_trail
    belongs_to :professional_detail
end
