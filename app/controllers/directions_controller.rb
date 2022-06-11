class DirectionsController < ApplicationController
  def index
    directions = Direction.all
    render json: directions.as_json
  end

  def create
    direction = Direction.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
    )
    direction.save
    render json: direction.as_json
  end

  def show
    direction = User.find_by(id: params[:id])
    render json: direction.as_json
  end

  def update
    direction = User.find_by(id: params[:id])
    direction.name = params[:name] || direction.name
    direction.email = params[:email] || direction.email
    direction.password = params[:password] || direction.password
    direction.save
    render json: direction.as_json
  end

  def destroy
    direction = User.find_by(id: params[:id])
    direction.destroy
    render json: { message: "User succesfully destroyed." }
  end
end
