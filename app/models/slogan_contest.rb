class SloganContest < ApplicationRecord
  # Validations
  validates :first_name, presence: true, length: { in: 1..200 }
  validates :last_name, presence: true, length: { in: 1..200 }
  validates :email, presence: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }
  validates :slogan, presence: true, length: { in: 1..50 }

end
