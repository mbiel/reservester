class Restaurant < ActiveRecord::Base
  resourcify
  attr_accessible :address, :description, :name, :phone, :image, :image_cache, :menu, :menu_cache, :latitude, :longitude, :owner, :category_ids, :category_tokens
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :owner, presence: true

  geocoded_by :address
  after_validation :geocode

  belongs_to :owner
  has_many :reservations, :dependent => :destroy
  accepts_nested_attributes_for :reservations
  has_and_belongs_to_many :categories
  attr_reader :category_tokens

  def category_tokens=(ids)
      self.category_ids = ids.split(",")
  end

  mount_uploader :image, ImageUploader
  mount_uploader :menu, MenuUploader
end
