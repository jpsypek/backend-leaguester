class Team < ApplicationRecord
  belongs_to :league
  has_many :players, through: :team_player
end
