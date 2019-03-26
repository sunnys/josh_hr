class Wife < FamilyDetail
    rails_admin do
        create do 
            field :type , :enum do
                enum do
                    [['Wife','Wife']]
                end
            end 
            field :name
            field :relation_type, :enum do
                enum do
                    [['Spouse','Spouse']]
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
                [['Wife','Wife']]
                end
            end 
            field :name
            field :relation_type, :enum do
                enum do
                    [['Spouse','Spouse']]
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
