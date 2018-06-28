class InvestmentType < ApplicationRecord

    has_many :investments
    
    validates_presence_of :code, :description
    
end
