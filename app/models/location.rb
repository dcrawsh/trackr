class Location < ApplicationRecord
    has_many :employees
    
    validates :title, presence: true
end
