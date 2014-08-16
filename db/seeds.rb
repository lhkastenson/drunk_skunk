# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
$brewery_db.styles.all.each do |style|
	Style.create(styleId: style.id, name: style.name, categoryId: style.categoryId, category: style.category.name, ibuMin: style.ibuMin, ibuMax: style.ibuMax, abvMin: style.abvMin, abvMax: style.abvMax, srmMin: style.srmMin, srmMax: style.srmMax, ogMin: style.ogMin, ogMax: style.ogMax, fgMin: style.fgMin, fgMax: style.fgMax, description: style.description)
end

Style.all.each do |style|
  $brewery_db.beers.all(styleId: style.styleId).each do |beer|
    Labels.create( beerId: beer.id, small: beer.labels, isOrganic: (beer.isOrganic == 'Y'), glasswareId: beer.glasswareId, status: beer.status, name: beer.name, description: beer.description, abv: beer.abv, ibu: beer.ibu, year: beer.year)
  end
end

$brewery_db.categories.all.each do |category|
	Category.create(categoryId: category.id, name: category.name)
end


beer.each do |attr|
if attr[0] == 'labels' then
attr.each do |label|
icon = label['icon']
medium = label['medium']
large = label['large']
end
  end
end
