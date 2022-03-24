class Rider < ApplicationRecord
  serialize :position, Hash

  # Validations
  validates :first_name, presence: true, length: { in: 1..200 }
  validates :last_name, presence: true, length: { in: 1..200 }
  validates :city, presence: true
  validates :state, presence: true
  validates :img_url, presence: true
  validates :position, presence: true
  
end
