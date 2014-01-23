require 'spec_helper'

describe Category do 	
  it { should respond_to(:name)}
  it { should validates_presence_of(:name)}
  it { should have_many(:items)}
end