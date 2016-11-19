class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: [:trainer, :admin]

  has_many :catcheds, dependent: :destroy
  has_many :pokemons, through: :catcheds

  before_create :set_default_role

  private

  def set_default_role
    self.role = 'trainer' if self.role.nil?
  end
end
