require 'spec_helper'

describe Category do 	
  it { should respond_to(:name)}
  it { should validate_presence_of(:name)}
end
