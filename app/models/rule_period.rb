class RulePeriod < ApplicationRecord
    belongs_to :professional_detail

    def humanize_duration
        TimeDifference.between(self.from, self.to).humanize rescue ""
    end

    def duration_in_month
        ((self.from.year * 12 + self.from.month) - (self.to.year * 12 + self.to.month)) rescue 0
    end
end
