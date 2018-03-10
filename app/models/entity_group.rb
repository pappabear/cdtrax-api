class EntityGroup < ApplicationRecord

    validates_presence_of :code, :description
    
end
