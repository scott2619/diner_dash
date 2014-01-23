require 'spec_helper'

describe CartItem do
	it {should belong_to(:cart)}
	it { should have_one(:item)}
	it { should respond_to(:quantity)}
end
