require 'spec_helper'
include Warden::Test::Helpers

describe "Beer pages" do

  subject { page }

  describe "new" do
    let(:user) { FactoryGirl.create(:user) }
    describe "user login" do

      before { visit create_beer_path }
    
      describe "page" do 
        it { should have_title(full_title('Log In')) }
        it { should have_content('Email') }
        it { should have_content('Password') }
        it { should have_content('Remember me') }
        it { should have_submit_button('Log in')}
      end
    end
    
    describe "logged in user" do
      before do
        user = FactoryGirl.create(:user)
        login_as(user, :scope => :user)
      end

      before { visit create_beer_path }
      
      describe "page" do
        it { should have_title(full_title('New Beer')) }
        it { should have_content('Name') }
        it { should have_content('Style') }
        it { should have_content('Description') }
      end
      User.delete_all
    end
  end

  describe "show" do
    let (:beer) { FactoryGirl.create(:beer) }
    let (:style) { FactoryGirl.create(:style) }
  	before { visit show_beer_path(:id => beer.beerId) }
    
    describe "page" do
    	it { should have_title(full_title('Beer Details')) }
    	it { should have_content('Style:') }
    	it { should have_content('Description:') }
    	it { should have_content('ABV:') }
    	it { should have_content('IBU:') }
      it { should have_selector('img') }
    end
  end

  describe "index" do
    before(:all) { 30.times { FactoryGirl.create(:beer) } }
    after(:all)  { Beer.delete_all }
    
    before { visit all_beers_path(:page => 1) }

    it "should list each beer" do
      Beer.paginate(page: 1).each do |beer|
        expect(page).to have_selector('li', text: beer.name)
      end
    end

    describe "page" do
      it { should have_title(full_title('All Beers')) }
      it { should have_content('Name:') }
      it { should have_content('Style:') }
      it { should have_content('Description:')}
      it { should have_content('IBU:') }
      it { should have_content('ABV:') }
      it { should have_selector('img') }
    end
  end
end