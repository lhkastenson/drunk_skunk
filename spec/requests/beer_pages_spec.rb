require 'spec_helper'

describe "Beer pages" do

  subject { page }

  describe "new" do
    before { visit create_beer_path }

    it { should have_content('Create a new beer') }
    it { should have_title(full_title('New Beer')) }
  end

  describe "show" do
    let (:beer) { Beer.new(name: "Sword Iron Swan", style: "Classic English-Style Pale Ale", ibu: 56, created_at: "2014-07-14 04:07:32", updated_at: "2014-07-14 04:07:32", beerId: "rz4EbJ", description: "Our newest canned offering is a tribute to the song...", abv: 5.5, foodPairings: nil, originalGravity: nil, glasswareId: nil, styleId: 1, isOrganic: false, servingTemperature: nil, status: 0, statusDisplay: nil, beerVariationId: nil, year: nil) }
  	
  	before { visit show_beer_path }

  	it { should have_title(full_title('Beer Details')) }
  	it { should have_content('Name:') }
  	it { should have_content('Style:') }
  	it { should have_content('Description:') }
  	it { should have_content('ABV:') }
  	it { should have_content('IBU:') }
  end

end