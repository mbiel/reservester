class Restaurant < ActiveRecord::Base
  attr_accessible :address, :description, :name, :phone, :image, :image_cache
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :phone, presence: true

  mount_uploader :image, ImageUploader
end
