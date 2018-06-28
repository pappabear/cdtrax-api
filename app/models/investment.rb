class Investment < ApplicationRecord

    has_one :purpose_code
    has_one :organization
    has_one :investment_type
  
end
