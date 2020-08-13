class Costume < ApplicationRecord
    belongs_to :category
    has_one_attached :avatar

    # vaildates :title, :owner_name, :location, presence: true
    # vaildates :owner_email, presence: true 
    # add @ symbol custom validation method
end
