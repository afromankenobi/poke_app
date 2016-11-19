class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: [:trainer, :admin]

  has_many :catcheds, dependent: :destroy
  has_many :pokemons, through: :catcheds
end
