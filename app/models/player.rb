class Player < ApplicationRecord
  has_many :teams, through: :team_player
  validates :first_name, presence: true
  validates :last_name, presence: true
end
