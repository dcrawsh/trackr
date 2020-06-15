class ChangeOccurenceToDate < ActiveRecord::Migration[6.0]
  def change
    change_column :employee_trainings, :occurence, :date
  end
end
