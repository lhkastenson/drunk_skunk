require 'spec_helper'

describe "Styles pages" do 
  
  subject { page }

  describe "show" do
  	let (:style) { Style.new(styleId: "55", name: "German-Style Brown Ale / Düsseldorf-Style Altbier", description: "Copper to brown in color, this German ale may be highly hopped and intensely bitter (although the 25 to 35 IBU range is more normal for the majority of Altbiers from Düsseldorf) and has a medium body and malty flavor. A variety of malts, including wheat, may be used. Hop character may be low to medium in the flavor and aroma. The overall impression is clean, crisp, and flavorful often with a dry finish. Fruity esters can be low. No diacetyl or chill haze should be perceived." , categoryId: 4, category: "German Origin Ales", ibuMin: 25, ibuMax: 52, abvMin: 4.3, abvMax: 5.5, srmMin: 11, srmMax: 19, ogMin: 1.044, ogMax: nil, fgMin: 1.008, fgMax: 1.014) }

  	before { visit show_style_path(:id => style.styleId) }

  	describe "page" do
  		it { should have_title(full_title('Style Details')) }
  		it { should have_content('Name:') }
  		it { should have_content(style.name) }
  		it { should have_content('Description:') }
  		it { should have_content(style.description) }
  		it { should have_content('Category:') }
  		it { should have_content(style.category) }
  		it { should have_content('IBU Min:') }
  		it { should have_content('IBU Max:') }
  		it { should have_content(style.ibuMin) }
  		it { should have_content(style.ibuMax) }
  		it { should have_content('ABV Min:') }
  		it { should have_content('ABV Max:') }
  		it { should have_content(style.abvMin) }
  		it { should have_content(style.abvMax) }
  		it { should have_content('SRM Min') }
  		it { should have_content('SRM Max') }
  		it { should have_content(style.srmMin) }
  		it { should have_content(style.srmMax) }
  		it { should have_content('Original Gravity Min:') }
  		it { should have_content('Original Gravity Max:') }
  		it { should have_content(style.ogMin) }
  		it { should have_content(style.ogMax) }
  		it { should have_content('Final Gravity Min:') }
  		it { should have_content('Final Gravity Max:') }
  		it { should have_content(style.fgMin) }
  		it { should have_content(style.fgMax) } 
  	end
  end

  describe "index" do
    let (:styles) {[Style.find_by(styleId: '1'),
                    Style.find_by(styleId: '2'),
                    Style.find_by(styleId: '3')]}

    before { visit all_styles_path }

    describe "page" do
      it { should have_title(full_title('All Styles')) }
      it { should have_content('Name:') }
      it { should have_content(styles[0].name) }
      it { should have_content(styles[1].name) }
      it { should have_content(styles[2].name) }
      it { should have_content('Description:') }
      it { should have_content(styles[0].description) }
      it { should have_content(styles[1].description) }
      it { should have_content(styles[2].description) }
      it { should have_content('Category:') }
      it { should have_content(styles[0].category) }
      it { should have_content(styles[1].category) }
      it { should have_content(styles[2].category) }
      it { should have_content('IBU Min:') }
      it { should have_content('IBU Max:') }
      it { should have_content(styles[0].ibuMin) }
      it { should have_content(styles[0].ibuMax) }
      it { should have_content(styles[1].ibuMin) }
      it { should have_content(styles[1].ibuMax) }
      it { should have_content(styles[2].ibuMin) }
      it { should have_content(styles[2].ibuMax) }
      it { should have_content('ABV Min:') }
      it { should have_content('ABV Max:') }
      it { should have_content(styles[0].abvMin) }
      it { should have_content(styles[0].abvMax) }
      it { should have_content(styles[1].abvMin) }
      it { should have_content(styles[1].abvMax) }
      it { should have_content(styles[2].abvMin) }
      it { should have_content(styles[2].abvMax) }
      it { should have_content('SRM Min') }
      it { should have_content('SRM Max') }
      it { should have_content(styles[0].srmMin) }
      it { should have_content(styles[0].srmMax) }
      it { should have_content(styles[1].srmMin) }
      it { should have_content(styles[1].srmMax) }
      it { should have_content(styles[2].srmMin) }
      it { should have_content(styles[2].srmMax) }
      it { should have_content('Original Gravity Min:') }
      it { should have_content('Original Gravity Max:') }
      it { should have_content(styles[0].ogMin) }
      it { should have_content(styles[0].ogMax) }
      it { should have_content(styles[1].ogMin) }
      it { should have_content(styles[1].ogMax) }
      it { should have_content(styles[2].ogMin) }
      it { should have_content(styles[2].ogMax) }
      it { should have_content('Final Gravity Min:') }
      it { should have_content('Final Gravity Max:') }
      it { should have_content(styles[0].fgMin) }
      it { should have_content(styles[0].fgMax) } 
      it { should have_content(styles[1].fgMin) }
      it { should have_content(styles[1].fgMax) } 
      it { should have_content(styles[2].fgMin) }
      it { should have_content(styles[2].fgMax) } 
    end
  end	
end