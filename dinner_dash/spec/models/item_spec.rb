require 'spec_helper'

describe Item do

	before do
		@item =  Item.new(title:'This has a description',
      description:'This has a title', price: 9.99)
	end

	it 'item should be valid if title and description are present' do
    expect(@item).should be_valid
	end
	it { should respond_to(:title) }
	it { should respond_to(:description) }
  it { should respond_to(:price) }
  it { should respond_to(:photo) }
  it { should validate_numericality_of(:price) }
  it { should validate_uniqueness_of(:title)}
  it { should validate_numericality_of(:price).is_greater_than(0) }

  it 'title cannot be empty' do
    item = Item.new(title:'',description:'This has no title')
    expect(item).to_not be_valid
  end

  it 'description cannot be empty' do
    item = Item.new(description:'',title:'This has no description')
    expect(item).to_not be_valid
  end

  it 'The price must greater than zero' do
    item = Item.new(description:'This should not be valid',
      title:'Valid numeric but value less than 0',price: -20)
    expect(item).to_not be_valid
  end

  it 'The price must be valid numeric value' do
    item = Item.new(description:'This should not be valid',
      title:'Valid numeric but value less than 0',price: -20)
    expect(item).to_not be_valid
  end

  it 'The photo is optional. If present it must be a valid URL format.' do

  end
end
