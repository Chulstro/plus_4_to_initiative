class ClassesController < ApplicationController
  def index
    @classses = Classs.all
  end
end
