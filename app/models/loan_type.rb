class LoanType < ApplicationRecord

    has_many :activity
    
    validates_presence_of :code, :description
    
end
