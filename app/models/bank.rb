class Bank < ApplicationRecord

    has_many :assessment_areas
    
    validates_presence_of :code, :description

end
