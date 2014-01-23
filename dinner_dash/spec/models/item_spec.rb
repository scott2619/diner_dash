require 'spec_helper'

describe Item do

it { should respond_to(:title) }
  it { should respond_to(:description) }
  it { should respond_to(:price) }
  it { should respond_to(:photo) }
  it { should belong_to(:category)}
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
  before do
    @item = Item.new(title:"A",description:"B",price: 1)
  end
  context 'invalid input' do
    it 'should return false for a poorly formed URL' do
      @item.should_not be_valid
    end
 
    it 'should return false for garbage input' do
      @item.photo = 3.14159265
      @item.should_not be_valid
    end
 
    it 'should return false for URLs without an HTTP protocol' do
      @item.photo = 'ftp://secret-file-stash.net'
      @item.should_not be_valid
    end
  end
 
  context 'valid input' do
    it 'should return true for a correctly formed HTTP URL' do
      @item.photo = 'http://nooooooooooooooo.com'
      @item.should be_valid
    end
 
    it 'should return true for a correctly formed HTTPS URL' do
      @item.photo = 'https://google.com'
      @item.should be_valid
    end
  end
 
end
