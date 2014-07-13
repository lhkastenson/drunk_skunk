# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
$brewery_db.styles.all.each do |style|
	Style.create(styleId: style.id, name: style.name, categoryId: style.categoryId, category: style.category.name, ibuMin: style.ibuMin, ibuMax: style.ibuMax, abvMin: style.abvMin, abvMax: style.abvMax, srmMin: style.srmMin, srmMax: style.srmMax, ogMin: style.ogMin, ogMax: style.ogMax, fgMin: style.fgMin, fgMax: style.fgMax)
end

page = 1
Style.all.each do |style|
	$brewery_db.beers.all(styleId: style.id).each do |beer|
	 Beer.create( beerId: beer.id, styleId: beer.styleId, isOrganic: (beer.isOrganic == 'Y'), glasswareId: beer.glasswareId, status: beer.status, name: beer.name, description: beer.description, abv: beer.abv, ibu: beer.ibu, year: beer.year)
	end
end