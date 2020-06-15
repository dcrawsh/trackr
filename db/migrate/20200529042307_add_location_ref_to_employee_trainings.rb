class AddLocationRefToEmployeeTrainings < ActiveRecord::Migration[6.0]
  def change
    add_reference :employee_trainings, :location, foreign_key: true
  end
end
