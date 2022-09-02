class Player < ApplicationRecord
  validates :username, presence: true, length: { minimum: 6 }
  validates :age, presence: true, numericality: { only_integer: true }
end
