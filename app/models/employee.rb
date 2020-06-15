class Employee < ApplicationRecord
  belongs_to :location
  has_many :employee_trainings
end
