require 'spec_helper'

describe Hop do
  before { @hop = Hop.new(hopId: 66, name: "Hallertau Northern Brewer", description: "Originally developed in England (see Northern Brewe...", countryOfOrigin: "DE", alphaAcidMin: 7.0, alphaAcidMax: nil, betaAcidMin: 3.0, betaAcidMax: 5.0, humuleneMin: 25.0, humuleneMax: 31.0, caryophylleneMin: 8.0, caryophylleneMax: 12.0, cohumuloneMin: 27.0, cohumuloneMax: 33.0, myrceneMin: 30.0, myrceneMax: 35.0, farneseneMin: nil, farneseneMax: 0.1, isNoble: false, forBittering: false, forFlavor: false, forAroma: false, category: "hop", categoryDisplay: "Hops")}

  subject { @hop }

  it { should respond_to (:hopId) }
  it { should respond_to (:name) }
  it { should respond_to (:description) }
  it { should respond_to (:countryOfOrigin) }
  it { should respond_to (:alphaAcidMin) }
  it { should respond_to (:alphaAcidMax) }
  it { should respond_to (:betaAcidMin) }
  it { should respond_to (:betaAcidMax) }
  it { should respond_to (:humuleneMin) }
  it { should respond_to (:humuleneMax) }
  it { should respond_to (:caryophylleneMin) }
  it { should respond_to (:caryophylleneMax) }
  it { should respond_to (:cohumuloneMin) }
  it { should respond_to (:cohumuloneMax) }
  it { should respond_to (:myrceneMin) }
  it { should respond_to (:myrceneMax) }
  it { should respond_to (:farneseneMin) }
  it { should respond_to (:farneseneMax) }
  it { should respond_to (:isNoble) }
  it { should respond_to (:forBittering) }
  it { should respond_to (:forFlavor) }
  it { should respond_to (:forAroma) }
  it { should respond_to (:category) }
  it { should respond_to (:categoryDisplay) }

  it { should be_valid }

  describe "when hopId is not present" do
  	before { @hop.hopId = nil }
  	it { should_not be_valid }
  end

  describe "when name is not present" do
  	before { @hop.name = "" }
  	it { should_not be_valid }
  end

  describe "when name is too long" do
  	before { @hop.name = "a" * 51 }
  	it { should_not be_valid }
  end

end
