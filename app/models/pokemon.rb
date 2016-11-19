class Pokemon < ApplicationRecord
  has_many :catcheds, dependent: :destroy
  has_many :users, through: :pokemons
end
