class HomesController < ApplicationController

  # GET /homes
  # GET /homes.json
  def index
    @users = User.preload([:personel_detail, :professional_detail]).all
    @total_jawans = @users.count
    @total_on_leave = @users.map(&:professional_detail).select{|i| i.leave_records.present?}
    @total_on_field = @users.map(&:professional_detail).select{|i| i.on_field_currently}
    @total_on_peace = (@total_jawans - @total_on_leave.count - @total_on_field.count)
    @total_investments = @users.map(&:personel_detail).select{|i| !i.investments.blank?}
    @total_achievements = @users.map(&:personel_detail).select{|i| !i.achievements.blank?}

    gon.data = @users.map(&:personel_detail).map(&:mothertongue).group_by(&:itself).transform_values!(&:size).map{|k,v| {'y': (!k.nil? ? k : "NA"), 'a': v}}
    gon.trade_data = @users.map(&:personel_detail).map(&:trade).group_by(&:itself).transform_values!(&:size).map{|k,v| {'y': (!k.nil? ? k : "NA"), 'a': v}}
    gon.state_data = @users.all.map{ |i| i.personel_detail.home_address.state rescue nil }.group_by(&:itself).transform_values!(&:size).map{|k,v| {'label': (!k.nil? ? k : "NA"), 'value': v}}
    gon.sport_data = @users.all.map{ |i| i.personel_detail.sports.last.sport_name rescue nil }.group_by(&:itself).transform_values!(&:size).map{|k,v| {'label': (!k.nil? ? k : "NA"), 'value': v}}
  end

  def on_leave_index
    @users = User.preload([:personel_detail, :professional_detail]).all
    @total_on_leave = @users.map(&:professional_detail).select{|i| i.leave_records.present?}
  end

  def on_field_index
    @users = User.preload([:personel_detail, :professional_detail]).all
    @total_on_field = @users.map(&:professional_detail).select{|i| i.on_field_currently}
  end

  def achievements_index
    @users = User.preload([:personel_detail, :professional_detail]).all
    @total_achievements = @users.map(&:personel_detail).select{|i| !i.achievements.blank?}
  end
  
  def investments_index
    @users = User.preload([:personel_detail, :professional_detail]).all
    @total_investments = @users.map(&:personel_detail).select{|i| !i.investments.blank?}
  end
end
