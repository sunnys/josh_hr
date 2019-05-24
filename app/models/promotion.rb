class Promotion < Service
    has_paper_trail
    belongs_to :professional_detail
    has_many :tech_trade_tests, dependent: :destroy
    has_many :promotion_cadres, dependent: :destroy
    accepts_nested_attributes_for :tech_trade_tests
    accepts_nested_attributes_for :promotion_cadres
end
