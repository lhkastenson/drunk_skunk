require 'spec_helper'

describe Fermentable do
  before { @fermentable = Fermentable.new(brewery_db_fermentable_id: 1975, name: "Chit Malt", description: nil, country_of_origin: nil, srm_id: nil, srm_precise: nil, moisture_content: nil, coarse_fine_difference: nil, diastatic_power: nil, dry_yield: nil, potential: nil, protein: nil, soluble_nitrogen_ratio: nil, max_in_batch: nil, requires_mashing: false, category: "malt", category_display: "Malts, Grains, & Fermentables") }

  subject { @fermentable }

  it { should respond_to (:brewery_db_fermentable_id) }
  it { should respond_to (:name) }
  it { should respond_to (:description) }
  it { should respond_to (:country_of_origin) }
  it { should respond_to (:srm_id) }
  it { should respond_to (:srm_precise) }
  it { should respond_to (:moisture_content) }
  it { should respond_to (:coarse_fine_difference) }
  it { should respond_to (:diastatic_power) }
  it { should respond_to (:dry_yield) }
  it { should respond_to (:potential) }
  it { should respond_to (:protein) }
  it { should respond_to (:soluble_nitrogen_ratio) }
  it { should respond_to (:max_in_batch) }
  it { should respond_to (:requires_mashing) }
  it { should respond_to (:category) }
  it { should respond_to (:category_display) }

  it { should be_valid}

  describe "when fermentable_id is not present" do
  	before { @fermentable.brewery_db_fermentable_id = nil }
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
