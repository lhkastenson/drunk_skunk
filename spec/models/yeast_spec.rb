require 'spec_helper'

describe Yeast do
	before { @yeast = Yeast.new(yeastId: 1849, name: "Belgian Wheat", description: "Isolated from a small Belgian brewery, this strain ...", attenuationMin: 72.0, attenuationMax: 76.0, fermentTempMin: 64.0, fermentTempMax: 74.0, alcoholToleranceMin: 12.0, alcoholToleranceMax: 12.0, productId: "3942", yeastFormat: "liquid", category: "yeast", categoryDisplay: "Yeast") }

	subject { @yeast }

	it { should respond_to (:yeastId) } 
	it { should respond_to (:name) }
	it { should respond_to (:description) }
	it { should respond_to (:yeastType) }
	it { should respond_to (:attenuationMin) }
	it { should respond_to (:attenuationMax) }
	it { should respond_to (:fermentTempMin) }
	it { should respond_to (:fermentTempMax) }
	it { should respond_to (:alcoholToleranceMin) }
	it { should respond_to (:alcoholToleranceMax) }
	it { should	respond_to (:productId) }
	it { should respond_to (:supplier) }
	it { should respond_to (:yeastFormat) }
	it { should respond_to (:category) }
	it { should respond_to (:categoryDisplay) }

	it { should be_valid }

  describe "when yeastId is not present" do
  	before { @yeast.yeastId = nil }
  	it { should_not be_valid }
  end

  describe "when name is not present" do
  	before { @yeast.name = "" }
  	it { should_not be_valid }
  end

  describe "when name is too long" do
  	before { @yeast.name = "a" * 51 }
  	it { should_not be_valid }
  end
end
