class BeersController < ApplicationController
  def new
  	@beer = Beer.new
  	@styleSelect = []
  	Style.all.each do |style| 
  		@styleSelect.push([style.name, style.styleId])
  	end
  end

  def create
    @beer = Beer.new(user_params)
    if @beer.save
      redirect_to @beer
    else
      render 'new'
    end
  end

  def index
    @beers = Beer.paginate(page: params[:page])
  end

  def show
    @beer = Beer.find_by(beerId: params[:id])
    @style = Style.find_by(styleId: @beer.styleId.to_s)
  end

  private
    def beer_params
      params.require(:beer).permit(:name, :styleId)
    end
end
