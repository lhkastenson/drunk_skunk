class BeersController < ApplicationController
  def new
  end

  def index
    @beers = Beer.paginate(page: params[:page])
  end

  def show
    @beer = Beer.find_by(beerId: params[:id])
    #@style = Style.find_by(styleId: @beer.styleId.to_s)
  end
end
