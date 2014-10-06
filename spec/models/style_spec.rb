require 'spec_helper'

describe Style do
  let (:style) { FactoryGirl.create(:style) }

	subject { style }

	it { should respond_to (:brewery_db_style_id) }
	it { should respond_to (:name) }
	it { should respond_to (:description) }
	it { should respond_to (:brewery_db_category_id) }
	it { should respond_to (:category) }
	it { should respond_to (:ibu_min) }
	it { should respond_to (:ibu_max) }
	it { should respond_to (:abv_min) }
	it { should respond_to (:abv_max) }
	it { should respond_to (:srm_min) }
	it { should respond_to (:srm_max) }
	it { should respond_to (:og_min) }
	it { should respond_to (:og_max) }
	it { should respond_to (:fg_min) }
	it { should respond_to (:fg_max) }

	it { should be_valid }

	describe "when style_id is not present" do
		before { style.brewery_db_style_id = "" }
		it { should_not be_valid }
	end

	describe "when name is not present" do
		before { style.name = "" }
		it { should_not be_valid }
	end

  describe "when name is too long" do
  	before { style.name = "a" * 51 }
  	it { should_not be_valid }
  end

	describe "when category_id is not present" do
		before { style.brewery_db_category_id = nil }
		it { should_not be_valid }
	end

end