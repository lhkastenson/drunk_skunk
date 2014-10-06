module BeersHelper
  def get_icon brewery_db_beer_id
    label = Label.find_by(brewery_db_beer_id: brewery_db_beer_id)
    if (label != nil && label.small != nil) then
      return label.small
    end
    return ""
  end

  def get_large_label brewery_db_beer_id
  	label = Label.find_by(brewery_db_beer_id: brewery_db_beer_id)
  	if (label != nil && label.large != nil) then
  		return label.large
		end
  		return ""
	end

	def get_style brewery_db_style_id
		style = Style.find_by(brewery_db_style_id: brewery_db_style_id.to_s)
		if (style != nil) then
			return style.name
		end
		return ""
	end
	
end
