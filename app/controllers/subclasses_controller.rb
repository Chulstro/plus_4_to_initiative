class SubclassesController < ApplicationController
  def index
    @subclasses = Classs.find(params[:id]).subclasses
  end
end
