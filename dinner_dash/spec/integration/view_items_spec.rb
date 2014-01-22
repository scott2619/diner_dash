require "spec_helper"

feature "Unauthenticated Users" do
	scenario "can view all the items" do
		visit root_path
		item = create(:item)
		expect(page).to have_content item.title
	end
	scenario "Browse items by category"
  scenario "Add an item to my cart"
  scenario "View my cart"
  scenario "Remove an item from my cart"
  scenario "Increase the quantity of a item in my cart"
  scenario "Log in, which should not clear the cart"
end