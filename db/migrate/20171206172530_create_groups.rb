class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :year
      t.text :description
      t.integer :total_qty
      t.string :image

      t.timestamps
    end
  end
end
