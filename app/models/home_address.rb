class HomeAddress < ApplicationRecord
    belongs_to :personel_detail

    def get_address
        "#{self.house_no}, #{self.street}, #{self.town}, #{self.state}"
    end
end
