require 'spec_helper'

describe Hop do
  let (:hop) { FactoryGirl.create(:hop) }

  subject { hop }

  it { should respond_to (:brewery_db_hop_id) }
  it { should respond_to (:name) }
  it { should respond_to (:description) }
  it { should respond_to (:country_of_origin) }
  it { should respond_to (:alpha_acid_min) }
  it { should respond_to (:alpha_acid_max) }
  it { should respond_to (:beta_acid_min) }
  it { should respond_to (:beta_acid_max) }
  it { should respond_to (:humulene_min) }
  it { should respond_to (:humulene_max) }
  it { should respond_to (:caryophyllene_min) }
  it { should respond_to (:caryophyllene_max) }
  it { should respond_to (:cohumulone_min) }
  it { should respond_to (:cohumulone_max) }
  it { should respond_to (:myrcene_min) }
  it { should respond_to (:myrcene_max) }
  it { should respond_to (:farnesene_min) }
  it { should respond_to (:farnesene_max) }
  it { should respond_to (:is_noble) }
  it { should respond_to (:for_bittering) }
  it { should respond_to (:for_flavor) }
  it { should respond_to (:for_aroma) }
  it { should respond_to (:category) }
  it { should respond_to (:category_display) }

  it { should be_valid }

  describe "when hop_id is not present" do
  	before { hop.brewery_db_hop_id = nil }
  	it { should_not be_valid }
  end

  describe "when name is not present" do
  	before { hop.name = "" }
  	it { should_not be_valid }
  end

  describe "when name is too long" do
  	before { hop.name = "a" * 51 }
  	it { should_not be_valid }
  end

end
