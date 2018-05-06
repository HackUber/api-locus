class AddWorkDaysToItineraries < ActiveRecord::Migration[5.1]
  def change
    add_column :itineraries, :work_days, :boolean, array: true, default: [false, false, false, false, false, false, false]
  end
end
