require 'spec_helper'

describe Category do 	
  it { should respond_to(:name)}
  it { should validates_presence_of(:name)}
end