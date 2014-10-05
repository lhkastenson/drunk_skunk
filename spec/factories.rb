FactoryGirl.define do
  factory :beer do
  	# random string generator golf!
  	# ('a'..'z').to_a.shuffle[0,8].join
  	sequence(:beerId)          { |n| "BeerId#{n}" }
    sequence(:name)            { |n| "Beer #{n}" }
    style                      "Classic English-Style Pale Ale"
    styleId                    1
    description                "Description..."
    abv                        Random.rand(5.0..20.0)
    sequence(:foodPairings)    { |n| "FoodPairings #{n}" }
    originalGravity             Random.rand(1.0..2.0)
    sequence(:glasswareId)     { |n| "{n}".to_i }
    isOrganic                  false
    servingTemperature         Random.rand(32.0..50.0)
    status                     1
    statusDisplay              "Status"
    sequence(:beerVariationId) { |n| "BeerVariationId#{n}" }
    year                       2000
  end

  factory :style do
    sequence(:styleId)         { |n| "#{n}" }
    sequence(:name)            { |n| "Style #{n}" }
    description                "Description..."
    sequence(:categoryId)      { |n| "#{n}".to_i }
    category                   "Category"
    ibuMin                     Random.rand(1.0..10.0)
    ibuMax                     Random.rand(10.0..40.0)
    abvMin                     Random.rand(1.0..5.0)
    abvMax                     Random.rand(3.0..20.0)
    srmMin                     Random.rand(1..10)
    srmMax                     Random.rand(10..40)
    ogMin                      Random.rand(1.0..1.1)
    ogMax                      Random.rand(1.1..2.0)
    fgMin                      Random.rand(1.0..1.1)
    fgMax                      Random.rand(1.1..2.0)
  end

  factory :user do
    sequence(:email)           { |n| "user#{n}@email.com" }
    sequence(:password)        { |n| "password#{n}" }
    sequence(:password_confirmation) { |n| "password#{n}" }
  end

end