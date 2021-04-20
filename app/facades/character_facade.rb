class CharacterFacade

  def self.create_form
    info = {}
    info["classes"] = Classs.all
    info["races"] = Race.all
    return info
  end

  def self.create_new(name, lvl, race_id, classs_id)
    race = Race.find(race_id.to_i)
    classs = Classs.find(classs_id.to_i)

    character = Character.create(name: name, lvl: lvl.to_i)
    CharacterRace.create(character: character, race: race)
    CharacterClasss.create(character: character, classs: classs)
  end
end
