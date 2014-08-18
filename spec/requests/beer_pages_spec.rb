require 'spec_helper'

describe "Beer pages" do

  subject { page }

  describe "new" do
    before { visit create_beer_path }

    it { should have_title(full_title('New Beer')) }
    it { should have_content('Name') }
    it { should have_content('Style') }
    it { should have_content('Description') }
  end

  describe "show" do
    let (:beer) { Beer.new(name: "Sword Iron Swan", style: "Classic English-Style Pale Ale", ibu: 56, created_at: "2014-07-14 04:07:32", updated_at: "2014-07-14 04:07:32", beerId: "rz4EbJ", description: "Our newest canned offering is a tribute to the song...", abv: 5.5, foodPairings: nil, originalGravity: nil, glasswareId: nil, styleId: 1, isOrganic: false, servingTemperature: nil, status: 0, statusDisplay: nil, beerVariationId: nil, year: nil) }
    let (:style) { Style.new(styleId: 1, name: "Classic English-Style Pale Ale", description: "Classic English pale ales are golden to copper colored and display earthy, herbal English-variety hop character. Note that \"earthy, herbal English-variety hop character\" is the perceived end, but may be a result of the skillful use of hops of other national origins. Medium to high hop bitterness, flavor, and aroma should be evident. This medium-bodied pale ale has low to medium malt flavor and aroma. Low caramel character is allowable. Fruity-ester flavors and aromas are moderate to strong. Chill haze may be in evidence only at very cold temperatures. The absence of diacetyl is desirable, though, diacetyl (butterscotch character) is acceptable and characteristic when at very low levels.", categoryId: 1, category: "British Origin Ales", ibuMin: 20, ibuMax: 40, abvMin: 4.5, abvMax: 5.5, srmMin: 5, srmMax: 5, ogMin: 1.04, ogMax: nil, fgMin: 1.008, fgMax: 1.016 ) }

  	before { visit show_beer_path(:id => beer.beerId)}
    
    describe "page" do
    	it { should have_title(full_title('Beer Details')) }
    	it { should have_content('Name:') }
      it { should have_content(beer.name) }
      it { should have_content(beer.style) }
    	it { should have_content('Style:') }
    	it { should have_content('Description:') }
    	it { should have_content('ABV:') }
    	it { should have_content('IBU:') }
    end
  end

  describe "index" do
    let (:beers) {[Beer.where(styleId: 1).first, 
                   Beer.where(styleId: 1).second,
                   Beer.where(styleId: 1).third]}
    
    before { visit all_beers_path }

    describe "page" do
      it { should have_title(full_title('All beers')) }
      it { should have_content('Name:') }
      it { should have_content(beers[0].name) }
      it { should have_content(beers[1].name) }
      it { should have_content(beers[2].name) }
      it { should have_content('Style:') }
      it { should have_content(beers[0].style) }
      it { should have_content(beers[1].style) }
      it { should have_content(beers[2].style) }
      it { should have_content('Description:')}
      it { should have_content(beers[0].description) }
      it { should have_content(beers[1].description) }
      it { should have_content(beers[2].description) }
      it { should have_content('IBU:') }
      it { should have_content(beers[0].ibu) }
      it { should have_content(beers[1].ibu) }
      it { should have_content(beers[2].ibu) }
      it { should have_content('ABV:') }
      it { should have_content(beers[0].abv) }
      it { should have_content(beers[1].abv) }
      it { should have_content(beers[2].abv) }
    end
  end
end