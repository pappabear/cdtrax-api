class Employee < ApplicationRecord

    has_many :activity
    
    validates_presence_of :code, :name, :title

end
