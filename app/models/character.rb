class Character < ApplicationRecord
  has_many :character_races
  has_many :races, through: :character_races
end
