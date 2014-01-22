class Item < ActiveRecord::Base
  validates :title, uniqueness: true
end
