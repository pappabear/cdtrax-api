class Activity < ApplicationRecord
  
  has_one :purpose_code
  has_one :employee
  has_one :entity
  has_one :disaster_type
  has_one :declaration_type
  has_one :assistance_type
  has_one :service_type
  has_one :investment_type
  has_one :loan_type
  has_one :call_code
  has_one :collateral_code
  
end
