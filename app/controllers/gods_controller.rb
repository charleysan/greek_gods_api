class GodsController < ApplicationController

  def index
    puts "Hello Mortals"
    gods = God.all
    render json: gods
  
  end

  def show
    gods = God.find(params[:id]) #dynamic for showing
    puts "==========="  #shows up in terminal
    puts params[:id]
    puts "==========="
    render json: gods
  end

  def create
    gods = God.create(name: params[:name], power: params[:power], symbol: params[:symbol]) #dynamic IN THE CONSOLE NEED THE KEY::VALUE PAIR EX.god = God.create(name: "Zeus",power: "Thunder",symbol: "Thunderbolt")
    render json: gods
  end

  def update
    gods = God.find(params[:id])
    gods.update(
      name: params[:name],
      power: params[:power],
      symbol: params[:symbol]
      )
    render json: gods
  end

  def smite
    gods = God.find(params[:id])
    gods.destroy
    render json: gods
  end
end
