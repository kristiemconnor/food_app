class Api::IngredientsController < ApplicationController
  before_action :authenticate_user

  def index

    render 'index.json.jb'
    
  end

  def show

    @ingredient= Ingredient.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @ingredient = Ingredient.new(
      name: params[:name],
      expiration: params[:expiration]
      )
    if @ingredient.save 
      render 'show.json.jb'
    else 
      render json:{Errors: @ingredients.errors.full_messages}, status: :unprocessable_entity
    end
  end

  

end
