FactoryGirl.define do
	factory :item do
    title "Computer"
    description "Electronics"
    price 2000
    photo "http://www.google.com"
	end

	factory :category do
	  name "Electronics"
  end
end
