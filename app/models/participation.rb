class Participation < ApplicationRecord
  belongs_to :player # gives participation.player and validation
  belongs_to :game # gives participation.game and validation
  validates :player, uniqueness: { scope: :game }
end
