require 'spec_helper'

describe Label do
  before { @label = Label.new(brewery_db_beer_id: "rz4EbJ", small: "fakeImage.com/smallimage.png", medium: "fakeImage.com/mediumImage.png", large: "fakeImage.com/largeImage.png") }

  subject { @label }

  it { should respond_to (:brewery_db_beer_id) }
  it { should respond_to (:small) }
  it { should respond_to (:medium) }
  it { should respond_to (:large) }

  it { should be_valid }

  describe "when brewery_db_beer_id is not present" do
  	before { @label.brewery_db_beer_id = "" }
  	it { should_not be_valid }
  end
end
