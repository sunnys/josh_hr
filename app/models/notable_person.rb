class NotablePerson < ApplicationRecord
    has_paper_trail
    belongs_to :unit
end
