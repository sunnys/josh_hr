class FamilyDetail < ApplicationRecord
    belongs_to :personel_detail
    mount_uploader :photo, PhotoUploader

    rails_admin do
        create do 
            field :type , :enum do
                enum do
                    [['Wife','Wife'],['Kid', 'Kid'], ['OtherRelation', 'OtherRelation']]
                end
            end 
            field :name
            field :relation_type, :enum do
                enum do
                    [['Spouse','Spouse'], ['Kid', 'Kid'], ['Father', 'Father'], ['Mother', 'Mother'], ['Brother', 'Brother']]
                end
            end
            field :personel_detail
            field :address
            field :phone_number
            field :date_of_birth
            field :photo
        end

        edit do 
            field :type , :enum do
                enum do
                [['Wife','Wife'],['Kid', 'Kid'], ['OtherRelation', 'OtherRelation']]
                end
            end 
            field :name
            field :relation_type, :enum do
                enum do
                    [['Spouse','Spouse'], ['Kid', 'Kid'], ['Father', 'Father'], ['Mother', 'Mother'], ['Brother', 'Brother']]
                end
            end
            field :personel_detail
            field :address
            field :phone_number
            field :date_of_birth
            field :photo
        end
    end
end
