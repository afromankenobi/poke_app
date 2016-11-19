class Catched < ApplicationRecord
  belongs_to :user
  belongs_to :pokemon

  before_save :set_default_level

  private

  def set_default_level
    self.level = 0 unless self.level
  end
end
