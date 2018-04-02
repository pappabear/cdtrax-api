class Branch < ApplicationRecord

    belongs_to :bank
    
    validates_presence_of :code, :description
    
end
