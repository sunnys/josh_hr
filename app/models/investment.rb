class Investment < ApplicationRecord
    has_paper_trail
    belongs_to :personel_detail
end
