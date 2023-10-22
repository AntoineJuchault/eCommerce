class ProductTypesController < ApplicationController
  
  def new
    @product_type = ProductType.new
  end
  
  def create

    @product_type = ProductType.new(product_type_params) 
    if @product_type.save
      redirect_to product_types_path
    else 
      render "new"
    end
  end
end
