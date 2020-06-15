class AddLocationIdToTrainings < ActiveRecord::Migration[6.0]
  def change
    add_column :trainings, :location_id, :integer
    add_foreign_key :trainings, :locations
  end
end
