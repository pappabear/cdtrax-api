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
  resources :volunteers
  resources :organizations
  resources :loans
  resources :services
  resources :investments
  
  get '/dashboard/service_hours_analytics', :to => 'dashboard#service_hours_analytics'
  get '/dashboard/loan_analytics', :to => 'dashboard#loan_analytics'
  
end
