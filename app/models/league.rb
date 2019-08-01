class League < ApplicationRecord
  belongs_to :organization
  accepts_nested_attributes_for :teams, allow_destroy: true
end
