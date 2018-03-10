class DisasterType < ApplicationRecord

    validates_presence_of :code, :description
    
end
