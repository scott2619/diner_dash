require 'spec_helper'

describe User
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
    	user = User.new
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        user.email = valid_address
        expect(user).to be_valid
    end
  end
end