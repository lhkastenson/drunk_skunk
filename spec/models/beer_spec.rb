require 'spec_helper'

describe Beer do
  let (:user) { FactoryGirl.create(:user) }
  let (:beer) { FactoryGirl.create(:beer) }

  subject { beer }

  it { should respond_to (:brewery_db_beer_id) }
  it { should respond_to (:name) }
  it { should respond_to (:brewery_db_style_id) }
  it { should respond_to (:user_id) }
  it { should respond_to (:ibu) }
  it { should respond_to (:abv) }
  it { should respond_to (:style) }
  it { should respond_to (:description) }
  it { should respond_to (:food_pairings) }
  it { should respond_to (:original_gravity) }
  it { should respond_to (:glassware_id) }
  it { should respond_to (:is_organic) }
  it { should respond_to (:serving_temperature) }
  it { should respond_to (:status) }
  it { should respond_to (:status_display) }
  it { should respond_to (:brewery_db_beer_variation_id) }
  it { should respond_to (:year) }

  it { should be_valid }

  describe "when brewery_db_beer_id is not present" do
    before { beer.brewery_db_beer_id = "" }
    it { should_not be_valid }
  end

  describe "when name is not present" do
  	before { beer.name = "" }
  	it { should_not be_valid }
  end

  describe "when style is not present" do
  	before { beer.brewery_db_style_id = "" }
  	it { should_not be_valid }
  end

  describe "when userId is not present" do
    before { beer.user_id = nil }
    it { should_not be_valid }
  end

  describe "when name is too long" do
  	before { beer.name = "a" * 51 }
  	it { should_not be_valid }
  end

  describe "when ibu is negative" do
    before { beer.ibu = -1 }
    it { should_not be_valid }
  end

  describe "when abv is negative" do
    before { beer.abv = -1 }
    it { should_not be_valid }
  end

  describe "when originalGravity is negative" do
    before { beer.original_gravity = -1 }
    it { should_not be_valid }
  end

end
