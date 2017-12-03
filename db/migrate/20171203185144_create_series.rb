class CreateSeries < ActiveRecord::Migration[5.1]
  def change
    create_table :series do |t|
      t.string :name
      t.integer :year
      t.string :description
      t.string :total_qty

      t.timestamps
    end
  end
end
