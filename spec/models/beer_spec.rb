require 'spec_helper'

describe Beer do
  before { @beer = Beer.new(name: "Example Beer", style: "Example Style", ibu: 50, abv: 5)}

  subject { @beer }

  it { should respond_to(:name) }
  it { should respond_to(:style) }
  it { should respond_to(:ibu) }
  it { should respond_to(:abv) }

  it { should be_valid }

  describe "when name is not present" do
  	before { @beer.name = "" }
  	it { should_not be_valid }
  end

  describe "when style is not present" do
  	before { @beer.style = "" }
  	it { should_not be_valid }
  end

  describe "when name is too long" do
  	before { @beer.name = "a" * 51 }
  	it { should_not be_valid }
  end

end
