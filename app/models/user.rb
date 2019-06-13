class User < ApplicationRecord
    has_many :reputations
    has_many :comments
    has_many :products
    has_many :soldproducts

end
