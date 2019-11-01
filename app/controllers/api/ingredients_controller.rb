class Api::IngredientsController < ApplicationController

  def index

    render 'index.json.jb'
    
  end

  def show

    @ingredient= Ingredient.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
