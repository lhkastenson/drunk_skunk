module BeersHelper
  def get_icon beerId
    label = Label.find_by(beerId: beerId)
    if (label != nil && label.small != nil) then
      return label.small
    end
    return ""
  end

  def get_large_label beerId
  	label = Label.find_by(beerId: beerId)
  	if (label != nil && label.large != nil) then
  		return label.large
		end
  		return ""
	end

	def get_style styleId
		style = Style.find_by(styleId: styleId.to_s)
		if (style != nil) then
			return style.name
		end
		return ""
	end
	
end
