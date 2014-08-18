require 'spec_helper'

describe Fermentable do
  before { @fermentable = Fermentable.new(fermentableId: 1975, name: "Chit Malt", description: nil, countryOfOrigin: nil, srmId: nil, srmPrecise: nil, moistureContent: nil, coarseFineDifference: nil, diastaticPower: nil, dryYield: nil, potential: nil, protein: nil, solubleNitrogenRatio: nil, maxInBatch: nil, requiresMashing: false, category: "malt", categoryDisplay: "Malts, Grains, & Fermentables") }

  subject { @fermentable }

  it { should respond_to (:fermentableId) }
  it { should respond_to (:name) }
  it { should respond_to (:description) }
  it { should respond_to (:countryOfOrigin) }
  it { should respond_to (:srmId) }
  it { should respond_to (:srmPrecise) }
  it { should respond_to (:moistureContent) }
  it { should respond_to (:coarseFineDifference) }
  it { should respond_to (:diastaticPower) }
  it { should respond_to (:dryYield) }
  it { should respond_to (:potential) }
  it { should respond_to (:protein) }
  it { should respond_to (:solubleNitrogenRatio) }
  it { should respond_to (:maxInBatch) }
  it { should respond_to (:requiresMashing) }
  it { should respond_to (:category) }
  it { should respond_to (:categoryDisplay) }

  it { should be_valid}

  describe "when fermentableId is not present" do
  	before { @fermentable.fermentableId = nil }
  	it { should_not be_valid }
  end

  describe "when name is not present" do
  	before { @fermentable.name = "" }
  	it { should_not be_valid }
  end

  describe "when name is too long" do
  	before { @fermentable.name = "a" * 51 }
  	it { should_not be_valid }
  end
end
