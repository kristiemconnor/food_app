class Api::RecipesController < ApplicationController

  


  def index
    response = HTTP.get("http://www.recipepuppy.com/api/?q=pumpkin").parse

    recipe_data = response






    render 'index.json.jb'
  end
end
