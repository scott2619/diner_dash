require 'spec_helper'

describe Card do
	it { should have_many(:cart_items)}
	it { should belong_to(:user)}
	it { should respond_to(:status)}
end