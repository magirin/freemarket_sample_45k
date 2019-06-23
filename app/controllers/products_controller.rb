class ProductsController < ApplicationController

    def create 
        @product = Product.new
    end
end
