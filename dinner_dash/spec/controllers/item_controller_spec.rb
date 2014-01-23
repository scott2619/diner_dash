require 'spec_helper'

describe ItemsController do
	context "#index" do
    it "returns all the items for a particular category" do
    	item = create(:item)
      get :index,category_id: item.category
      expect(assigns(:items)).to match_array([item])
    end
	end
end