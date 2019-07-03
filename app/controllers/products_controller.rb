class ProductsController < ApplicationController

    def create 
        @category = 0
        @product = Product.new
    end

#     private
  
#     def set_category
#       @group = Category.new
#     end
#   end

end
