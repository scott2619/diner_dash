class Item < ActiveRecord::Base
  belongs_to :category
  validates :title, uniqueness: true
  validates :title, length: {minimum: 1}
  validates :description, length: {minimum: 1}
  validates :price, numericality: true
  validates_numericality_of :price, greater_than: 0
  validates :title, :description, :price, presence: true
  validates :photo, url: true
end
