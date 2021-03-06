class StorefrontController < ApplicationController
 include Transloadit::Rails::ParamsDecoder

 
  def all_items
  	@products = Product.where(:for_sale => true)
  end

  def items_by_category
    @products = Product.where(category: params[:category_id])
    @category = Category.find(params[:category_id])
  end

  def items_by_brand
    @products = Product.where(brand: params[:brand])
    @brand = params[:brand]
  end


end
