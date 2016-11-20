class Pokemon < ApplicationRecord
  has_many :catcheds, dependent: :destroy
  has_many :users, through: :catcheds

  mount_uploader :photo, PhotoUploader
end
