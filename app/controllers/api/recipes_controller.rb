class Api::RecipesController < ApplicationController
  def index
    response = HTTP.get("http://www.recipepuppy.com/api/?i=#{params[:i]}")
   


    @recipe_data = JSON.parse(response.body)["results"]

    render 'index.json.jb'
  end


  def show


    render 'show.json.jb'
    
  end
end
