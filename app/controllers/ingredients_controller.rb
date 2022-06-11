class IngredientsController < ApplicationController
  def index
    ingredients = Ingredient.all
    render json: ingredients.as_json
  end

  def create
    ingredient = Ingredient.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
    )
    ingredient.save
    render json: ingredient.as_json
  end

  def show
    ingredient = User.find_by(id: params[:id])
    render json: ingredient.as_json
  end

  def update
    ingredient = User.find_by(id: params[:id])
    ingredient.name = params[:name] || ingredient.name
    ingredient.email = params[:email] || ingredient.email
    ingredient.password = params[:password] || ingredient.password
    ingredient.save
    render json: ingredient.as_json
  end

  def destroy
    ingredient = User.find_by(id: params[:id])
    ingredient.destroy
    render json: { message: "User succesfully destroyed." }
  end
end
