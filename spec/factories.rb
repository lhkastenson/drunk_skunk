FactoryGirl.define do
  factory :beer do
  	# random string generator golf!
  	# ('a'..'z').to_a.shuffle[0,8].join
  	sequence(:brewery_db_beer_id) { |n| "brewery_db_beer_id#{n}" }
    sequence(:name)            { |n| "Beer #{n}" }
    style                      "Classic English-Style Pale Ale"
    brewery_db_style_id        1
    description                "Description..."
    abv                        Random.rand(5.0..20.0)
    sequence(:food_pairings)   { |n| "FoodPairings #{n}" }
    original_gravity           Random.rand(1.0..2.0)
    sequence(:glassware_id)    { |n| "{n}".to_i }
    is_organic                 false
    serving_temperature        Random.rand(32.0..50.0)
    status                     1
    status_display             "Status"
    sequence(:brewery_db_beer_variation_id) { |n| "BeerVariationId#{n}" }
    year                       2000
  end

  factory :style do
    sequence(:brewery_db_style_id) { |n| "#{n}" }
    sequence(:name)            { |n| "Style #{n}" }
    description                "Description..."
    sequence(:category_id)     { |n| "#{n}".to_i }
    category                   "Category"
    ibu_min                    Random.rand(1.0..10.0)
    ibu_max                    Random.rand(10.0..40.0)
    abv_min                    Random.rand(1.0..5.0)
    abv_max                    Random.rand(3.0..20.0)
    srm_min                    Random.rand(1..10)
    srm_max                    Random.rand(10..40)
    og_min                     Random.rand(1.0..1.1)
    og_max                     Random.rand(1.1..2.0)
    fg_min                     Random.rand(1.0..1.1)
    fg_max                     Random.rand(1.1..2.0)
  end

  factory :user do
    sequence(:email)           { |n| "user#{n}@email.com" }
    sequence(:password)        { |n| "password#{n}" }
    sequence(:password_confirmation) { |n| "password#{n}" }
  end

end