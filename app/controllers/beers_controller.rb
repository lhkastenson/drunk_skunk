class BeersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def new
  	@beer = Beer.new
  	@styleSelect = []
  	Style.all.each do |style| 
  		@styleSelect.push([style.name, style.brewery_db_style_id])
  	end
  end

  def create
    @beer = current_user.Beer.new(beer_params)

    respond_to do |format|
      if @beer.save
        format_html { redirect_to @beer, notice: "Beer was successfully created." }
        format_json { render action: 'show', staus: :created, location: @beer }
      else
        format_html { render action: 'new' }
        format_json { render json: @beer.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    @beers = Beer.paginate(page: params[:page])
  end

  def show
    @beer = Beer.find_by(brewery_db_beer_id: params[:id])
    @style = Style.find_by(brewery_db_style_id: @beer.brewery_db_style_id.to_s)
  end

  private
    def beer_params
      params.require(:beer).permit(:name, :brewery_db_style_id)
    end
end
