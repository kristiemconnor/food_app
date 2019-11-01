class Api::RecipesController < ApplicationController
  # before_action :authenticate_user

  def index
    response = HTTP.get("http://www.recipepuppy.com/api/?i=#{params[:i]}")
   


    @recipe_data = JSON.parse(response.body)["results"]

    render 'index.json.jb'
  end

  def show
    response = HTTP.get("http://www.recipepuppy.com/api/?i=#{params[:i]}")

    @recipe_data = JSON.parse(response.body)["results"]

    @choice = params[:id].to_i


    # this method needs to show an individual recipe chosen by the user
    render 'show.json.jb'
    
  end
end
