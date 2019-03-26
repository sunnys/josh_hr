class BankAccount < ApplicationRecord
    belongs_to :personel_detail, dependent: :destroy
end
