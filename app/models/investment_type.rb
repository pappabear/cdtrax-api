class InvestmentType < ApplicationRecord

    validates_presence_of :code, :description
    
end
