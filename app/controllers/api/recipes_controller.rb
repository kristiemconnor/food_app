class Api::RecipesController < ApplicationController
  # before_action :authenticate_user

  def index
    ingredients_string = params[:i].join(",")
    ingredients_string = ingredients_string.downcase
    response = HTTP.get("http://www.recipepuppy.com/api/?i=#{ingredients_string}")
    @recipe_data = JSON.parse(response.body)["results"]
    render 'index.json.jb'
  end

  def show
    response = HTTP.get("http://www.recipepuppy.com/api/?i=#{params[:i]}")
    @recipe_data = JSON.parse(response.body)["results"]
    @choice = params[:id].to_i
    render 'show.json.jb'
  end

end
