class Product < ApplicationRecord
	mount_uploader :image, ImageUploader
	
	has_one :series

end
