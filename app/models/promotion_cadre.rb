class PromotionCadre < ApplicationRecord
    has_paper_trail
    belongs_to :promotion
end
