class ProductsController < ApplicationController

    def create 
        @category = Category.new
        @product = Product.new
    end

#     private
  
#     def set_category
#       @group = Category.new
#     end
#   end

end
