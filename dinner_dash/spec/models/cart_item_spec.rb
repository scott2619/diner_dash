require 'spec_helper'

describe CartItem do
	it {should belong(:cart)}
	it { should has_one(:item)}
	it { should respond_to(:quantity)}
end