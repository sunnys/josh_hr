class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :recoverable, :trackable

  has_one :personel_detail
  has_one :professional_detail

  accepts_nested_attributes_for :personel_detail
  accepts_nested_attributes_for :professional_detail

  rails_admin do
    configure :set_password

    edit do
      exclude_fields :password, :password_confirmation
      include_fields :set_password
    end
  end

  # Provided for Rails Admin to allow the password to be reset
  def set_password; nil; end

  def set_password=(value)
    return nil if value.blank?
    self.password = value
    self.password_confirmation = value
  end

  def custom_label_method
    "#{army_no}"
  end

  def update_army_no(army_no)
    self.old_army_no = self.army_no
    self.army_no = army_no
    self.save!
  end
end
