class Game < ApplicationRecord
  CATEGORIES = ["Mathematical", "Board", "Puzzle", "Strategy", "Action", "PVP"]
  has_many :participations, dependent: :destroy # game.participations
  has_many :players, through: :participations # game.players

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 50 }
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
