class DropTableSeries < ActiveRecord::Migration[5.1]
  def change
  	drop_table :series
  end
end
