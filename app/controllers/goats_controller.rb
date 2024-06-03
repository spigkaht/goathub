class GoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @goats = Goat.all
    @goat = Goat.new
  end

  def show
    set_goat
  end

  def new
    @goat = Goat.new
  end

  def create
    @goat = Goat.new(goat_params)
    @goat.user = current_user
    @goat.save
    redirect_to goat_path(@goat)
  end

  private

  def set_goat
    @goat = Goat.find(params[:id])
  end

  def goat_params
    params.require(:goat).permit(:name, :price, :color, :weight, :personality, :age)
  end
end
