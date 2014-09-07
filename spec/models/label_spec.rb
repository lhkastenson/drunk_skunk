require 'spec_helper'

describe Label do
  before { @label = Label.new(beerId: "rz4EbJ", small: "fakeImage.com/smallimage.png", medium: "fakeImage.com/mediumImage.png", large: "fakeImage.com/largeImage.png") }

  subject { @label }

  it { should respond_to (:beerId) }
  it { should respond_to (:small) }
  it { should respond_to (:medium) }
  it { should respond_to (:large) }

  it { should be_valid }

  describe "when beerId is not present" do
  	before { @label.beerId = "" }
  	it { should_not be_valid }
  end
end
