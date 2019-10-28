class Api::UsersController < ApplicationController

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name], 
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )

    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    render 'show.json.jb'


  end

  def update
    @user = User.find_by(id: params[:id])

    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.email = params[:email] || @user.email
    @user.password = params[:password] || @user.password

    @user.save
    render 'show.json.jb'

  end

  def destroy

    @user = User.find_by(id: params[:id])
    @user.destroy

    render json: {message: "User successfully destroyed."}


  end


end
