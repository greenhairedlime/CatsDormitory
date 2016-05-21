class User < ActiveRecord::Base
  validates :owner_first_name, :owner_last_name, :pet_name , presence: true, length:{minimum: 15}
end