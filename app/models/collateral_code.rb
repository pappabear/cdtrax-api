class CollateralCode < ApplicationRecord

    validates_presence_of :code, :description
    
end
