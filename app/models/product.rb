class Product < ApplicationRecord
    enum shipping: [:way, :price, :area, :date]
    belongs_to :user
    has_one :bland
    has_many :categorys
    has_many :images
    has_many :productimages
    has_many :comments
end
