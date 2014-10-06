# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
# for use in prod/testing with real data (will need some tweaking)
#$brewery_db.styles.all.each do |style|
#	Style.create(styleId: style.id, name: style.name, categoryId: style.categoryId, category: style.category.name, ibuMin: style.ibuMin, ibuMax: style.ibuMax, abvMin: style.abvMin, abvMax: style.abvMax, srmMin: style.srmMin, srmMax: style.srmMax, ogMin: style.ogMin, ogMax: style.ogMax, fgMin: style.fgMin, fgMax: style.fgMax, description: style.description)
#end
#
#Style.all.each do |style|
#  $brewery_db.beers.all(styleId: style.styleId).each do |beer|
#    Beer.create( brewery_db_beer_id: beer.id, styleId: beer.styleId, style: beer.style.name, isOrganic: (beer.isOrganic == 'Y'), glasswareId: beer.glasswareId, status: beer.status, name: beer.name, description: beer.description, abv: beer.abv, ibu: beer.ibu, year: beer.year)
#    if (beer.labels != nil) then
#      Label.create(brewery_db_beer_id: beer.id, medium: beer.labels.medium, large: beer.labels.large, small: beer.labels.icon)
#    end
#  end
#end
#
#$brewery_db.categories.all.each do |category|
#	Category.create(categoryId: category.id, name: category.name)
#end
#
#
#Style.all.each do |style|
#	$brewery_db.beers.all(styleId: style.styleId).each do |beer|
#		label = Labels.new( brewery_db_beer_id: beer.id )
#
#beer.each do |attr|
#  if attr[0] == 'labels' then
#    attr.each do |label|
#      puts label['icon']
#      puts label['medium']
#      puts label['large']
#    end
#  end
#end
#
#$brewery_db.yeasts.all.each do |yeast|
#	Yeast.create( yeastId: yeast.id, name: yeast.name, description: yeast.description, yeastType: yeast.yeastType, attenuationMin: yeast.attenuationMin, attenuationMax: yeast.attenuationMax, fermentTempMin: yeast.fermentTempMin, fermentTempMax: yeast.fermentTempMax, alcoholToleranceMin: yeast.alcoholToleranceMin, alcoholToleranceMax: yeast.alcoholToleranceMax, productId: yeast.productId, supplier: yeast.supplier, yeastFormat: yeast.yeastFormat, category: yeast.category, categoryDisplay: yeast.categoryDisplay)
#end
#
#$brewery_db.fermentables.all.each do |ferm|
#	Fermentable.create( fermentableId: ferm.id, name: ferm.name, description: ferm.description, countryOfOrigin: ferm.countryOfOrigin, srmId: ferm.srmId, srmPrecise: ferm.srmPrecise, moistureContent: ferm.moistureContent, coarseFineDifference: ferm.coarseFineDifference, diastaticPower: ferm.diastaticPower, dryYield: ferm.dryYield, potential: ferm.potential, protein: ferm.protein, solubleNitrogenRatio: ferm.solubleNitrogenRatio, maxInBatch: ferm.maxInBatch, requiresMashing: (ferm.requiresMashing == 'Y'), category: ferm.category, categoryDisplay: ferm.categoryDisplay)
#end
#
#$brewery_db.hops.all.each do |hop|
#  Hop.create( hopId: hop.id, name: hop.name, description: hop.description, countryOfOrigin: hop.countryOfOrigin, alphaAcidMin: hop.alphaAcidMin, alphaAcidMax: hop.alphaAcidMax, betaAcidMin: hop.betaAcidMin, betaAcidMax: hop.betaAcidMax, humuleneMin: hop.humuleneMin, humuleneMax: hop.humuleneMax, caryophylleneMin: hop.caryophylleneMin, caryophylleneMax: hop.caryophylleneMax, cohumuloneMin: hop.cohumuloneMin, cohumuloneMax: hop.cohumuloneMax, myrceneMin: hop.myrceneMin, myrceneMax: hop.myrceneMax, farneseneMin: hop.farneseneMin, farneseneMax: hop.farneseneMax, isNoble: (hop.isNobel == "Y"), forBittering: (hop.forBittering == "Y"), forFlavor: (hop.forFlavor == "Y"), forAroma: (hop.forAroma == "Y"), category: hop.category, categoryDisplay: hop.categoryDisplay)  
#end

