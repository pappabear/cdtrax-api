class Loan < ApplicationRecord

    has_one :purpose_code
    has_one :organization
    has_one :loan_type
    has_one :call_code
    has_one :collateral_code
  
end
