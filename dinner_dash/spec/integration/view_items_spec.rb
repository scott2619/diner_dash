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
    item = create(:item)
    visit root_path
    click_link "Electronics"
    expect(page).to have_link "Add to cart."
    expect(page).to have_content item.title
  end

  scenario "Add an item to my cart" do
    item = create(:item)
    visit root_path
    click_link "Add to cart."
    expect(page).to have_content "Item added to cart."
    expect(page).to have_link "Remove"
  end

  scenario "View my cart" do
    visit root_path
    expect(page).to have_link "View Cart."
  end

  scenario "Remove an item from my cart" do
    item = create(:item)
    visit root_path
    click_link "Add to cart."
    click_link "Remove"
    expect(page).to_not have_content item.title
  end

  scenario "Increase the quantity of a item in my cart" do
    item = create(:item)
    visit root_path
    click_link "Add to cart."
    fill_in "Number",with:"2"
    click_link "Update"
    expect(page).to have_content "2"
  end

  scenario "Log in, which should not clear the cart",pending: true do
    visit root_path
    click_link "Sign in."
  end
end
