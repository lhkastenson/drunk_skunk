require 'spec_helper'

describe Yeast do
	before { @yeast = Yeast.new(brewery_db_yeast_id: 1849, name: "Belgian Wheat", description: "Isolated from a small Belgian brewery, this strain ...", attenuation_min: 72.0, attenuation_max: 76.0, ferment_temp_min: 64.0, ferment_temp_max: 74.0, alcohol_tolerance_min: 12.0, alcohol_tolerance_max: 12.0, product_id: "3942", yeast_format: "liquid", category: "yeast", category_display: "Yeast") }

	subject { @yeast }

	it { should respond_to (:brewery_db_yeast_id) } 
	it { should respond_to (:name) }
	it { should respond_to (:description) }
	it { should respond_to (:yeast_type) }
	it { should respond_to (:attenuation_min) }
	it { should respond_to (:attenuation_max) }
	it { should respond_to (:ferment_temp_min) }
	it { should respond_to (:ferment_temp_max) }
	it { should respond_to (:alcohol_tolerance_min) }
	it { should respond_to (:alcohol_tolerance_max) }
	it { should	respond_to (:product_id) }
	it { should respond_to (:supplier) }
	it { should respond_to (:yeast_format) }
	it { should respond_to (:category) }
	it { should respond_to (:category_display) }

	it { should be_valid }

  describe "when yeast_id is not present" do
  	before { @yeast.brewery_db_yeast_id = nil }
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
