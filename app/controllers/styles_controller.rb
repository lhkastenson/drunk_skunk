class StylesController < ApplicationController
  def new
  end

  def index
  	@styles = Style.paginate(page: params[:page])
  end

  def show 
    @style = Style.find_by(brewery_db_style_id: params[:id])
  end
end
