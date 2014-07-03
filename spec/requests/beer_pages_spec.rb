require 'spec_helper'

describe "Beer pages" do

  subject { page }

  describe "beers page" do
    before { visit create_beer_path }

    it { should have_content('Create a new beer') }
    it { should have_title(full_title('New Beer')) }
  end
end