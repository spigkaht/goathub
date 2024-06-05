class PagesController < ApplicationController
  def home
  end

  # GET /mygoats pages#goats my_goats_path
  def goats
    @goats_owned = current_user.goats
    # find all goats matching user id
    @offers = current_user.offers_for_goats
  end

  def goats2
    @goats_owned = current_user.goats
    @goats_rented = current_user.offers
  end
end
