class Entity < ApplicationRecord

    has_many :activity
    
    validates_presence_of :name

end
