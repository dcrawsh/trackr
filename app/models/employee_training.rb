class EmployeeTraining < ApplicationRecord
  belongs_to :employee
  belongs_to :training
  belongs_to :location
end
