class OffersController < ApplicationController
  before_action :set_goat, only: [:new, :create, :update]

  # GET /goats/:id/offers/new offers#new
  def new
    @offer = Offer.new
  end

  # POST /goats/:id/offers	offers#create
  def create
    @offer = Offer.new(offer_params)
    @offer.goat = @goat
    @offer.user = current_user
    @offer.price = @goat.price
    if @offer.save
      redirect_to goat_path(@goat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH /offers/:id/edit	offers#update
  def update
    @offer = Offer.find(params[:id])
    @offer.update(status: params[:status])
    redirect_to my_goats_path
  end

  private

  def set_goat
    @goat = Goat.find(params[:goat_id])
  end

  def offer_params
    params.require(:offer).permit(:price, :comment, :start_date, :end_date, :status)
  end
end
