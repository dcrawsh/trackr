class Location < ApplicationRecord
    has_many :employees
    has_many :trainings
    has_many :employee_trainings
    validates :title, presence: true
end
