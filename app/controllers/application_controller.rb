class ApplicationController < ActionController::Base

  def index
    @goats = Goat.all
  end

  def show
    @goat = Goat.find(params[:id])
  end

  def new
    @goat = Goat.new
  end

  def create
    @goat = Goat.new(goat_params)
    @goat = Goat.save
    # redirect_to...
  end

  def update
    @goat.update
  end
end
