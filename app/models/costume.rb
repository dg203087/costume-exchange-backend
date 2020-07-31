class Costume < ApplicationRecord
    belongs_to :category

    # vaildates :title, :owner_name, :location, presence: true
    # vaildates :owner_email, presence: true 
    # add @ symbol custom validation method
end
