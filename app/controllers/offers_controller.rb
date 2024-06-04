class OffersController < ApplicationController
  before_action :set_goat, only: [:new, :create]
  # GET /goats/:id/offers/new offers#new
  def new
    @offer = Offer.new
  end

  # POST /goats/:id/offers	offers#create
  def create
    @offer = Offer.new(offer_params)
    @offer.goat = @goat
    @offer.user = current_user
    @offer.save
    redirect_to goat_path(@goat)
  end
  
  # PATCH /offers/:id/edit	offers#update

  private

  def set_goat
    @goat = Goat.find(params[:goat_id])
  end

  def offer_params
    params.require(:offer).permit(:price)
  end
end
