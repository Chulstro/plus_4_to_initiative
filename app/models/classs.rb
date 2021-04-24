class Classs < ApplicationRecord
  has_many :subclasses
  has_many :character_classses
  has_many :characters, through: :character_classses
end
