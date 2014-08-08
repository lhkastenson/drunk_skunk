require 'spec_helper'

describe Style do
	before { @style = Style.new(styleId: 1, name: "Classic English-Style Pale Ale", description: "Classic English pale ales are golden to copper colored and display earthy, herbal English-variety hop character. Note that \"earthy, herbal English-variety hop character\" is the perceived end, but may be a result of the skillful use of hops of other national origins. Medium to high hop bitterness, flavor, and aroma should be evident. This medium-bodied pale ale has low to medium malt flavor and aroma. Low caramel character is allowable. Fruity-ester flavors and aromas are moderate to strong. Chill haze may be in evidence only at very cold temperatures. The absence of diacetyl is desirable, though, diacetyl (butterscotch character) is acceptable and characteristic when at very low levels.", categoryId: 1, category: "British Origin Ales", ibuMin: 20, ibuMax: 40, abvMin: 4.5, abvMax: 5.5, srmMin: 5, srmMax: 5, ogMin: 1.04, ogMax: nil, fgMin: 1.008, fgMax: 1.016, )}

	subject { @style }

	it { should respond_to (:styleId) }
	it { should respond_to (:name) }
	it { should respond_to (:description) }
	it { should respond_to (:categoryId) }
	it { should respond_to (:category) }
	it { should respond_to (:ibuMin) }
	it { should respond_to (:ibuMax) }
	it { should respond_to (:abvMin) }
	it { should respond_to (:abvMax) }
	it { should respond_to (:srmMin) }
	it { should respond_to (:srmMax) }
	it { should respond_to (:ogMin) }
	it { should respond_to (:ogMax) }
	it { should respond_to (:fgMin) }
	it { should respond_to (:fgMax) }

	it { should be_valid }

	describe "when styleId is not present" do
		before { @style.styleId = "" }
		it { should_not be_valid }
	end

	describe "when name is not present" do
		before { @stlye.name = "" }
		it { should_not be_valid }
	end

  describe "when name is too long" do
  	before { @style.name = "a" * 51 }
  	it { should_not be_valid }
  end

	describe "when categoryId is not present" do
		before { @style.categoryId = nil }
		it { should_not be_valid }
	end

end






#Style id: 325, 
#styleId: "1", 
#name: "Classic English-Style Pale Ale", 
#description: "Classic English pale ales are golden to copper colo...", 
#categoryId: 1, 
#category: "British Origin Ales", 
#ibuMin: 20, 
#ibuMax: 40,
#abvMin: 4.5,
#abvMax: 5.5, 
#srmMin: 5, 
#srmMax: 5, 
#ogMin: 1.04, 
#ogMax: nil, 
#fgMin: 1.008, 
#fgMax: 1.016, 
#created_at: "2014-07-14 00:16:11", 
#updated_at: "2014-07-14 00:16:11"