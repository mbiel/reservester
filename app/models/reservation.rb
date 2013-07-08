class Reservation < ActiveRecord::Base
  attr_accessible :email, :request_time, :message, :restaurant_id

  validates :email, presence: true
  validates :request_time, presence: true

  belongs_to :restaurant

end
