class AddFeatureImageToProducts < ActiveRecord::Migration[5.1]
  def change
  	add_column :products, :feature_image, :boolean
  end
end
