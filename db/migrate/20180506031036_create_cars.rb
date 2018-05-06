class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.string :color
      t.string :plate

      t.timestamps
    end
  end
end
