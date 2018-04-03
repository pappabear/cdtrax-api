Rails.application.routes.draw do

  resources :banks 
  resources :assessment_areas
  resources :branches 
  resources :call_codes
  resources :collateral_codes 
  resources :entity_groups
  resources :investment_types
  resources :loan_types
  resources :service_types
  resources :purpose_codes
  resources :disaster_types
  resources :declaration_types
  resources :assistance_types
  resources :entities
  resources :employees 
  
end
