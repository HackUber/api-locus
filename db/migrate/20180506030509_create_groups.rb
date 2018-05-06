class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :origin
      t.string :destination
      t.datetime :arrival_time
      t.datetime :departure_time

      t.timestamps
    end
  end
end
