class Reservation < ActiveRecord::Base
  attr_accessible :email, :request_time, :restaurant_id

  validates :email, presence: true
  validates :request_time, presence: true

end
