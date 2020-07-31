class Category < ApplicationRecord
    has_many :costumes
    
    validates :name, presence: true
end
