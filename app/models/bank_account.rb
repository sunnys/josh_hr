class BankAccount < ApplicationRecord
    has_paper_trail
    belongs_to :personel_detail, dependent: :destroy
end
