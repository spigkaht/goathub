class PagesController < ApplicationController
  def home
  end

  def goats
    @goats_owned = current_user.goats
    # find all goats matching user id
  end
end
