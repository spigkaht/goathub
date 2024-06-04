class OffersController < ApplicationController
  # GET /goats/:id/offers/new offers#new
  def new
    @goat = Goat.find(params[:goat_id])
    @offer = Offer.new
  end

  # POST /goats/:id/offers	offers#create
  def create
  end

  # PATCH /offers/:id/edit	offers#update
end
