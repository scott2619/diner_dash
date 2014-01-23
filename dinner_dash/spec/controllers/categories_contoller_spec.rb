require 'spec_helper'

describe CategoriesController do
	context "#index" do
    it "fetches all the categories and also gets all the items in memory by using includes" do
    	item1 = create(:item)
    	item2 = create(:item)
    	get :index
    	expect(assigns(:categories)).to match_array([item1.category,item2.category])
    end
	end
	context "#show" do
    it "fetches the items of the category" do
    	item1 = create(:item)
    	get :show,id: item1.category
    	expect(assigns(:items)).to match_array([item1])
    end
	end
end