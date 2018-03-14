class Pokemon < ApplicationRecord
  belongs_to :trainer, optional: true

  def damage(amt)
    self.health = self.health - amt
  end

end
