class ReplaceCamelsWithSnakes < ActiveRecord::Migration
  def change
    change_table :beers do |t|
      t.rename :beerId, :brewery_db_beer_id
      t.rename :styleId, :brewery_db_style_id
      t.rename :foodPairings, :food_pairings
      t.rename :originalGravity, :original_gravity
      t.rename :glasswareId, :brewery_db_glassware_id
      t.rename :isOrganic, :is_organic
      t.rename :servingTemperature, :serving_temperature
      t.rename :statusDisplay, :status_display
      t.rename :beerVariationId, :brewery_db_beer_variation_id
      t.rename :userId, :user_id
    end

    change_table :categories do |t|
    	t.rename :categoryId, :brewery_db_category_id
    end

    change_table :fermentables do |t|
    	t.rename :fermentableId, :brewery_db_fermentable_id
    	t.rename :countryOfOrigin, :country_of_origin
    	t.rename :srmId, :srm_id
    	t.rename :srmPrecise, :srm_precise
    	t.rename :moistureContent, :moisture_content
    	t.rename :coarseFineDifference, :coarse_fine_difference
    	t.rename :diastaticPower, :diastatic_power
    	t.rename :dryYield, :dry_yield
    	t.rename :solubleNitrogenRatio, :soluble_nitrogen_ratio
    	t.rename :maxInBatch, :max_in_batch
    	t.rename :requiresMashing, :requires_mashing
    	t.rename :categoryDisplay, :category_display
    end

    change_table :hops do |t|
    	t.rename :hopId, :brewery_db_hop_id
    	t.rename :countryOfOrigin, :country_of_origin
    	t.rename :alphaAcidMin, :alpha_acid_min
    	t.rename :alphaAcidMax, :alpha_acid_max
    	t.rename :betaAcidMin, :beta_acid_min
    	t.rename :betaAcidMax, :beta_acid_max
    	t.rename :humuleneMin, :humulene_min
    	t.rename :humuleneMax, :humulene_max
    	t.rename :caryophylleneMin, :caryophyllene_min
    	t.rename :caryophylleneMax, :caryophyllene_max
    	t.rename :cohumuloneMin, :cohumulone_min
    	t.rename :cohumuloneMax, :cohumulone_max
    	t.rename :myrceneMin, :myrcene_min
    	t.rename :myrceneMax, :myrcene_max
    	t.rename :farneseneMin, :farnesene_min
    	t.rename :farneseneMax, :farnesene_max
    	t.rename :isNoble, :is_noble
    	t.rename :forBittering, :for_bittering
    	t.rename :forFlavor, :for_flavor
    	t.rename :forAroma, :for_aroma
    	t.rename :categoryDisplay, :category_display
    end

    change_table :labels do |t|
    	t.rename :beerId, :brewery_db_beer_id
    end

    change_table :styles do |t|
    	t.rename :styleId, :brewery_db_style_id
    	t.rename :categoryId, :brewery_db_category_id
    	t.rename :ibuMin, :ibu_min
    	t.rename :ibuMax, :ibu_max
    	t.rename :abvMin, :abv_min
    	t.rename :abvMax, :abv_max
    	t.rename :srmMin, :srm_min
    	t.rename :srmMax, :srm_max
    	t.rename :ogMin, :og_min
    	t.rename :ogMax, :og_max
    	t.rename :fgMin, :fg_min
    	t.rename :fgMax, :fg_max
    end

    change_table :yeasts do |t|
    	t.rename :yeastId, :brewery_db_yeast_id
    	t.rename :attenuationMin, :attenuation_min
    	t.rename :attenuationMax, :attenuation_max
    	t.rename :fermentTempMin, :ferment_temp_min
    	t.rename :fermentTempMax, :ferment_temp_max
    	t.rename :alcoholToleranceMin, :alcohol_tolerance_min
    	t.rename :alcoholToleranceMax, :alcohol_tolerance_max
    	t.rename :productId, :product_id
    	t.rename :yeastFormat, :yeast_format
    	t.rename :categoryDisplay, :category_display
    	t.rename :yeastType, :yeast_type
    end
  end
end
