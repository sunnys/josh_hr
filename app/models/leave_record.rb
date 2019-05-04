class LeaveRecord < ApplicationRecord
    belongs_to :professional_detail

    # def custom_label_method
    #     "#{army_no}"
    # end
    rails_admin do
        create do 
            field :type_of_leave , :enum do
                enum do
                    MasterRule.all.collect{ |p| [p.rule, p.rule]}
                end
            end 
            field :from
            field :to
            field :total_no_of_days
            field :date_of_rejoining
            field :professional_detail_id, :enum do
                enum do
                    ProfessionalDetail.all.collect {|p| [p.user.army_no, p.id]}
                end
            end
            field :not_returned_on_date
        end

        edit do 
            field :type_of_leave , :enum do
                enum do
                    MasterRule.all.collect{ |p| [p.rule, p.rule]}
                end
            end 
            field :from
            field :to
            field :total_no_of_days
            field :date_of_rejoining
            field :professional_detail_id, :enum do
                enum do
                    ProfessionalDetail.all.collect {|p| [p.user.army_no, p.id]}
                end
            end
            field :not_returned_on_date
        end
    end
end
