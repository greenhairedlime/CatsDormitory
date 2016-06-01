class Reserve < ActiveRecord::Base
  validates :room_type, :owner_first_name, :owner_last_name,:patronymic, :pet_name , presence: true, length:{maximum: 15}
end
