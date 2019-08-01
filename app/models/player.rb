class Player < ApplicationRecord
  has_many :teams, through: :team_player
end
