class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.integer :employee_number
      t.string :first_name
      t.string :last_name
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
