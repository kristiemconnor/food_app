class Api::IngredientsController < ApplicationController
  before_action :authenticate_user

  def index
    # user's ingredients
    @ingredients = current_user.ingredients
    render 'index.json.jb'
  end

  def show
    @ingredient = Ingredient.find_by(id: params[:id])

    if @ingredient.user_id == current_user.id
      render 'show.json.jb'
    else
      render json: { message: "not authorized" }

    end
  end

  def create
    @ingredient = Ingredient.new(
      name: params[:name],
      expiration: params[:expiration],
      user_id: current_user.id
      )
    if @ingredient.save 
      render 'show.json.jb'
    else 
      render json: {errors: @ingredient.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @ingredient = Ingredient.find_by(id: params[:id])

    @ingredient.name = params[:name] || @ingredient.name
    @ingredient.expiration = params[:expiration] || @ingredient.expiration

    if @ingredient.save
      render 'show.json.jb'
    else
      render json: {errors: @ingredient.errors.full_messages}, status: :bad_request
    end
    
  end

  def destroy
    @ingredient = Ingredient.find_by(id: params[:id])
    @ingredient.destroy
    render json: { message: "Ingredient removed from pantry." }  
  end
end
