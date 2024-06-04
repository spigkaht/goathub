class GoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  # GET /goats goats#index goats_path
  def index
    @goats = Goat.all
    @goat = Goat.new
  end

  # GET /goats/:id goats#show goat_path
  def show
    set_goat
  end

  # GET /goats/new goats#new new_goat_path
  def new
    @goat = Goat.new
  end

  # POST /goats goats#create
  def create
    @goat = Goat.new(goat_params)
    @goat.user = current_user
    @goat.save
    redirect_to goat_path(@goat)
  end

  # GET /goats/:id/edit goats#edit edit_goat_path

  # PATCH /goats/:id goats#update

  # DELETE /goats/:id goats#destroy

  private

  def set_goat
    @goat = Goat.find(params[:id])
  end

  def goat_params
    params.require(:goat).permit(:name, :price, :color, :weight, :personality, :age)
  end
end
