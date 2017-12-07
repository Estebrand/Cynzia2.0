class PortfolioController < ApplicationController
  include Transloadit::Rails::ParamsDecoder

  
	def portfolio
		@products = Product.where(category: params[:category], previous_work: false)
    @product = @products.first


	end

  def previous_work
  	@products = Product.where(previous_work: true)

  end

  def index
  @product1 = Product.find_by(category: "Fine Art")
  @product2 = Product.find_by(category: "People Portraits")
  @product3 = Product.find_by(category: "Pet Portraits")


  @products = Product.all
   @carousel = []
  	 
     @products.each do |product|
      if product.feature_image == true 
        @carousel.push(product.image)
      end
    end

  end



end
