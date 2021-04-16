class Race < ApplicationRecord
  has_many :character_races
  has_many :characters, through: :character_races
end
