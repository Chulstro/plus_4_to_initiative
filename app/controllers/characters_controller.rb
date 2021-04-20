class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def new
    @new_character_info = CharacterFacade.create_form
  end

  def create
    CharacterFacade.create_new(params["name"], params["lvl"], params["race"], params["class"])

    redirect_to "/"
  end
end
