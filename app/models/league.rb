class League < ApplicationRecord
  belongs_to :organization
  has_many :teams
  accepts_nested_attributes_for :teams, allow_destroy: true
end
