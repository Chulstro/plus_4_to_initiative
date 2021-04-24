class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def new
    @new_character_info = CharacterFacade.create_form
  end

  def create
    info = CharacterFacade.create_new(params["name"], params["lvl"], params["race"], params["class"])

    redirect_to "/character_subclasses/new?character_id=#{info.character_id}"
  end
end
