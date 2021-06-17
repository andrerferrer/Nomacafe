class FavouritesController < ApplicationController

  def index
    #TO DO get all nomads (type))
    @nomads = User.all
  end


  def show

  end


  def new
  end

  def destroy
  end

end
