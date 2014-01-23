require "spec_helper"

feature "Unauthenticated Users" do
  scenario "can view all the items" do
    item = create(:item)
    visit root_path
    expect(page).to have_content item.title
  end

  scenario "can see all the categories" do
    category1 = create(:category,name:"Electronics")
    category2 = create(:category,name:"Videos")
    visit root_path
    expect(page).to have_content category1.name
    expect(page).to have_content category2.name
  end

  scenario "Browse items by category" do
    category = create(:category,name:"Electronics")
    visit root_path
    click_link "Electronics"
    expect(page).to have_content category.item.title
  end

  scenario "Add an item to my cart"
  scenario "View my cart"
  scenario "Remove an item from my cart"
  scenario "Increase the quantity of a item in my cart"
  scenario "Log in, which should not clear the cart"
end
