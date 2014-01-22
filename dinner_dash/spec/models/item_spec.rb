require 'spec_helper'

describe Item do

	before do
		@item =  Item.new(title:"This has a description",description:"This has a title",price: 1)
	end

	it "item should be valid if title , description and price are present" do
    expect(@item).should be_valid
	end
	it { should respond_to(:title) }
	it { should respond_to(:description) }
  it { should respond_to(:price) }
  it { should respond_to(:photo) }
  it { should validate_numericality_of(:price) }
  it { should validate_uniqueness_of(:title)}
  it { should validate_numericality_of(:price).is_greater_than(0) }
  it { should validate_presence_of(:title)}
  it { should validate_presence_of(:description)}
  it { should validate_presence_of(:price)}
  it { should ensure_length_of(:title).
              is_at_least(1) }
  it { should ensure_length_of(:description).
              is_at_least(1) }
  

 it "The photo is optional. If present it must be a valid URL format." do

  end
end