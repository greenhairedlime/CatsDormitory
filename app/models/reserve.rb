class Reserve < ActiveRecord::Base
  validates :owner_first_name, :owner_last_name, :pet_name , presence: true, length:{maximum: 15}
end
