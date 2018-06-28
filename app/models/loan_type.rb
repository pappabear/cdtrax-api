class LoanType < ApplicationRecord

    has_many :loans
    
    validates_presence_of :code, :description
    
end
