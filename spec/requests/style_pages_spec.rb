require 'spec_helper'

describe "Styles pages" do 
  
  subject { page }

  describe "show" do
  	let (:style) { FactoryGirl.create(:style) }

  	before { visit show_style_path(:id => style.styleId) }

  	describe "page" do
  		it { should have_title(full_title('Style Details')) }
  		it { should have_content('Name:') }
  		it { should have_content('Description:') }
  		it { should have_content('Category:') }
  		it { should have_content('IBU Min:') }
  		it { should have_content('IBU Max:') }
  		it { should have_content('ABV Min:') }
  		it { should have_content('ABV Max:') }
  		it { should have_content('SRM Min') }
  		it { should have_content('SRM Max') }
  		it { should have_content('Original Gravity Min:') }
  		it { should have_content('Original Gravity Max:') }
  		it { should have_content('Final Gravity Min:') }
  		it { should have_content('Final Gravity Max:') }
  	end
  end

  describe "index" do
    before(:all) { 3.times { FactoryGirl.create(:style) } }
    after(:all)  { Style.delete_all }
    before { visit all_styles_path(:page => 1) }

    describe "page" do
      it { should have_title(full_title('All Styles')) }
      it { should have_content('Name:') }
      it { should have_content('Description:') }
      it { should have_content('Category:') }
      it { should have_content('IBU Min:') }
      it { should have_content('IBU Max:') }
      it { should have_content('ABV Min:') }
      it { should have_content('ABV Max:') }
      it { should have_content('SRM Min') }
      it { should have_content('SRM Max') }
      it { should have_content('Original Gravity Min:') }
      it { should have_content('Original Gravity Max:') }
      it { should have_content('Final Gravity Min:') }
      it { should have_content('Final Gravity Max:') }
    end
  end	
end