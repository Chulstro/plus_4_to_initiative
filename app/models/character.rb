class Character < ApplicationRecord
  has_many :character_races
  has_many :races, through: :character_races
  has_many :character_classses
  has_many :classses, through: :character_classses
  has_many :character_subclasses
  has_many :subclasses, through: :character_subclasses
end
