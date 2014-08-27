require 'spec_helper'

describe "Styles pages" do 
  
  subject { page }

  describe "show" do
  	let (:style) { Style.new(styleId: "55", name: "German-Style Brown Ale / Düsseldorf-Style Altbier", description: "Copper to brown in color, this German ale may be hi...", categoryId: 4, category: "German Origin Ales", ibuMin: 25, ibuMax: 52, abvMin: 4.3, abvMax: 5.5, srmMin: 11, srmMax: 19, ogMin: 1.044, ogMax: nil, fgMin: 1.008, fgMax: 1.014) }

  	before { visit show_style_path(:id => style.styleId) }

  	describe "page" do
  		it { should have_title(full_title('Style details')) }
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
  		it { should have_contnet('Original Gravity Max:') }
  		it { should have_content(style.ogMin) }
  		it { should have_content(style.ogMax) }
  		it { should have_content('Final Gravity Min:') }
  		it { should have_contnet('Final Gravity Max:') }
  		it { should have_content(style.fgMin) }
  		it { should have_content(style.fgMax) } 
  	end
  end
	
end