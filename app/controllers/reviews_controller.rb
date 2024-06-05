class ReviewsController < ApplicationController
  def new
    @goat = Goat.find(params[:goat_id])
    @review = Review.new
  end

  def create
    @goat = Goat.find(params[:goat_id])
    @review = Review.new(review_params)
    @review.goat = @goat
    @review.user = current_user
    @review.save
    redirect_to goat_path(@goat)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
