require 'spec_helper'

describe User do
	it { should validate_presence_of(:email_address)}
  it { should validate_uniqueness_of(:email_address)}
  it { should validate_presence_of(:full_name)}
  it { should ensure_length_of(:full_name).
              is_at_least(1) }
  it { should respond_to(:display_name) }

  it { should ensure_length_of(:display_name).
              is_at_least(2).is_at_most(32) }

describe "when email format is valid" do
    it "should be valid" do
    	user = User.new(full_name:"Ankur Kothari", display_name: "Ankur")
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        user.email_address = valid_address
        expect(user).to be_valid
      end
    end
  end

   describe "when email format is invalid" do
    it "should be invalid" do
    	user = User.new(full_name:"Ankur Kothari", display_name: "Ankur")
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        user.email_address = invalid_address
        expect(user).not_to be_valid
      end
    end
  end
end