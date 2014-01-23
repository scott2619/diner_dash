FactoryGirl.define do
	factory :item do
    sequence(:title) { |n| "Computer#{n}" }
    sequence(:description) { |n| "Electronics#{n}" }
    price 2000
    photo "http://www.google.com"
    category
	end

	factory :category do
	  name "Electronics"
  end
end
