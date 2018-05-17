class ActivityType < ApplicationRecord

    has_many :activity
    
    validates_presence_of :description
    
end
