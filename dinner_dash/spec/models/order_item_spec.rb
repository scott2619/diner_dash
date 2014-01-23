require 'spec_helper'

describe OrderItem do
	it {should belong(:order)}
	it { should has_one(:item)}
	it { should respond_to(:quantity)}
end