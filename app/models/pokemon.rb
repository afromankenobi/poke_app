class Pokemon < ApplicationRecord
  has_many :catcheds, dependent: :destroy
  has_many :users, through: :pokemons

  mount_uploader :photo, PhotoUploader
end
