class ServiceParticular < ApplicationRecord
    belongs_to :professional_detail

    rails_admin do
        create do 
            field :professional_detail_id, :enum do
                enum do
                    ProfessionalDetail.all.collect {|p| [p.user.army_no, p.id]}
                end
            end
            field :type_of_service , :enum do
                enum do
                    MasterRule.all.collect{ |p| [p.rule, p.rule]}
                end
            end 
            field :days
            field :date_from
            field :date_to
            field :autority
            
        end

        edit do 
            field :professional_detail_id, :enum do
                enum do
                    ProfessionalDetail.all.collect {|p| [p.user.army_no, p.id]}
                end
            end
            field :type_of_service , :enum do
                enum do
                    MasterRule.all.collect{ |p| [p.rule, p.rule]}
                end
            end 
            field :days
            field :date_from
            field :date_to
            field :autority
        end
    end

    after_create :create_rule_period

    def create_rule_period
        last_rule_period = ServiceParticular.where(professional_detail_id: self.professional_detail_id).last
        period = last_rule_period.date_to - self.date_from
        if period < 0
            last_rule_period.date_to = self.date_from
            last_rule_period.days = diff(last_rule_period.date_from, last_rule_period.date_to)
            last_rule_period.save!
            rp = RulePeriod.where(rule: last_rule_period.type_of_service, from: last_rule_period.date_from, professional_detail_id: self.professional_detail_id).last
            rp.to = self.from
            rp.total_embodied_day =last_rule_period.days
            rp.save!
        elsif period == 0
            RulePeriod.create!({
                rule: self.type_of_service,
                from: self.from_date,
                to: self.to_date,
                total_embodied_day: self.days, 
                total_disembodied_day: 0,
                professional_detail_id: self.professional_detail_id
            })
        else
            RulePeriod.create!({
                from: last_rule_period.date_to,
                to: self.date_from,
                total_embodied_day: 0,
                total_disembodied_day: period,
                professional_detail_id: self.professional_detail_id
            })
        end
    end


end
