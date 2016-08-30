class Artist < ApplicationRecord
  validates :name, presence: true
  has_many :songs
  mount_uploader :image, ImageUploader
end
