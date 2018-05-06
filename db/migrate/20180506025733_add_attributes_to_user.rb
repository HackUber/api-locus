class AddAttributesToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :pickup_place, :integer
    add_column :users, :phone_number, :integer
  end
end
