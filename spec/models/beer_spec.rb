require 'spec_helper'

describe Beer do
  before { @beer = Beer.new(name: "Sword Iron Swan", style: "Classic English-Style Pale Ale", ibu: 56, created_at: "2014-07-14 04:07:32", updated_at: "2014-07-14 04:07:32", beerId: "rz4EbJ", description: "Our newest canned offering is a tribute to the song...", abv: 5.5, foodPairings: nil, originalGravity: nil, glasswareId: nil, styleId: 1, isOrganic: false, servingTemperature: nil, status: 0, statusDisplay: nil, beerVariationId: nil, year: nil) }

  subject { @beer }

  it { should respond_to (:beerId) }
  it { should respond_to (:name) }
  it { should respond_to (:styleId) }
  it { should respond_to (:ibu) }
  it { should respond_to (:abv) }
  it { should respond_to (:style) }
  it { should respond_to (:description) }
  it { should respond_to (:foodPairings) }
  it { should respond_to (:originalGravity) }
  it { should respond_to (:glasswareId) }
  it { should respond_to (:isOrganic) }
  it { should respond_to (:servingTemperature) }
  it { should respond_to (:status) }
  it { should respond_to (:statusDisplay) }
  it { should respond_to (:beerVariationId) }
  it { should respond_to (:year) }

  it { should be_valid }

  describe "when beerId is not present" do
    before { @beer.beerId = "" }
    it { should_not be_valid }
  end

  describe "when name is not present" do
  	before { @beer.name = "" }
  	it { should_not be_valid }
  end

  describe "when style is not present" do
  	before { @beer.styleId = "" }
  	it { should_not be_valid }
  end

  describe "when name is too long" do
  	before { @beer.name = "a" * 51 }
  	it { should_not be_valid }
  end

  describe "when ibu is negative" do
    before { @beer.ibu < 0 }
    it { should_not be_valid }
  end

  describe "when abv is negative" do
    before { @beer.abv < 0 }
    it { should_not be_valid }
  end

  describe "when originalGravity is negative" do
    before { @beer.originalGravity < 0 }
    it { should_not be_valid }
  end

  describe "when styleId is not valid" do
    before { !Style.exists?(@beer.styleId) }
    it { should_not be_valid }
  end

end
