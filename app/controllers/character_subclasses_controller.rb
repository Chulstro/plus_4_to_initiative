class CharacterSubclassesController < ApplicationController
  def new
    @character = Character.find(params[:character_id])
  end

  def create
    character = Character.find(params[:character_id])
    subclass =  Subclass.find(params[:subclass])
    CharacterSubclass.create(character: character, subclass: subclass)

    redirect_to "/"
  end
end
