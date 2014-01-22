require 'spec_helper'

describe Item do
	it { should respond_to(:title) }
	it { should respond_to(:description) }
  it { should respond_to(:price) }
  it { should respond_to(:photo) }

  it { should validate_uniqueness_of(:title)}



  it "title cannot be empty" do
    item = Item.create(title:"")
    expect(item).to_not be_valid
  end

  it "description cannot be empty" do
    item = Item.create(description:"")
    expect(item).to_not be_valid
  end

  it "The price must be a valid decimal numeric value and greater than zero" do
  end

  it "The photo is optional. If present it must be a valid URL format." do
  end
end
