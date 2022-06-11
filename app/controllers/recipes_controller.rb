class RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    render json: recipes.as_json
  end

  def create
    recipe = Recipe.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
    )
    recipe.save
    render json: recipe.as_json
  end

  def show
    recipe = User.find_by(id: params[:id])
    render json: recipe.as_json
  end

  def update
    recipe = User.find_by(id: params[:id])
    recipe.name = params[:name] || recipe.name
    recipe.email = params[:email] || recipe.email
    recipe.password = params[:password] || recipe.password
    recipe.save
    render json: recipe.as_json
  end

  def destroy
    recipe = User.find_by(id: params[:id])
    recipe.destroy
    render json: { message: "User succesfully destroyed." }
  end
end
