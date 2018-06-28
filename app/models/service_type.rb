class ServiceType < ApplicationRecord

    validates_presence_of :code, :description
    
end
