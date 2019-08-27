class Player < ApplicationRecord
  has_secure_password
  has_many :teams, through: :team_player
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: { case_sensitive: false }
end
