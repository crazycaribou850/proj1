class Pokemon < ApplicationRecord
  belongs_to :trainer, optional: true
  validates :name, presence: true
  validates :name, uniqueness: true

  def damage(amt)
    self.health = self.health - amt
  end

end
