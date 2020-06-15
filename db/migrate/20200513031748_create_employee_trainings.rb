class CreateEmployeeTrainings < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_trainings do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :training, null: false, foreign_key: true
      t.datetime :occurence

      t.timestamps
    end
  end
end
