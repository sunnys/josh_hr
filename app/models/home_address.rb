class HomeAddress < ApplicationRecord
    has_paper_trail
    belongs_to :personel_detail

    def get_address
        "#{self.house_no}, #{self.street}, #{self.town}, #{self.state}"
    end
end
