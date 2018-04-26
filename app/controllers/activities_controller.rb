class ActivitiesController < ApplicationController


  #before_action :set_activity, only: [:show, :update, :destroy]
  before_action :set_activity, only: [:update, :destroy]


  # GET /activities
  def index
    sql = "select employees.name employee_name, employees.title employee_title"
    sql += ", entities.name entity_name, entities.address entity_address, entities.city entity_city, entities.state entity_state, entities.zip entity_zip"
    sql += ", assessment_areas.description"
    sql += ", disaster_types.description"
    sql += ", declaration_types.description"
    sql += ", assistance_types.description"     
    sql += ", service_types.description"
    sql += ", investment_types.description"
    sql += ", loan_types.description"
    sql += ", call_codes.description"
    sql += ", collateral_codes.description"
    sql += ", purpose_codes.description"   
    sql += ", a.* "
    sql += " from activities a, employees employees, entities entities "
    sql += ", assessment_areas assessment_areas, disaster_types disaster_types, declaration_types declaration_types"
    sql += ", assistance_types assistance_types, service_types service_types, investment_types investment_types"
    sql += ", loan_types loan_types, call_codes call_codes, collateral_codes collateral_codes, purpose_codes purpose_codes"
    sql += " where a.employee_id = employees.id"
    sql += " and a.entity_id = entities.id"
    sql += " and a.assessment_area_id = assessment_areas.id"
    sql += " and a.disaster_type_id = disaster_types.id"
    sql += " and a.declaration_type_id = declaration_types.id"
    sql += " and a.assistance_type_id = assistance_types.id"
    sql += " and a.service_type_id = service_types.id"
    sql += " and a.investment_type_id = investment_types.id"
    sql += " and a.loan_type_id = loan_types.id"
    sql += " and a.call_code_id = call_codes.id"
    sql += " and a.collateral_code_id = collateral_codes.id"
    sql += " and a.purpose_code_id = purpose_codes.id"
    
    #@activities = Activity.all
    @activities = Activity.find_by_sql(sql)

    json_response(@activities)
  end

  # POST /activities
  def create
    @activity = Activity.create!(activity_params)
    json_response(@activity)
  end

  # GET /activities/:id
  def show

    sql = "select employees.name employee_name, employees.title employee_title"
    sql += ", entities.name entity_name, entities.address entity_address, entities.city entity_city, entities.state entity_state, entities.zip entity_zip"
    sql += ", assessment_areas.description"
    sql += ", disaster_types.description"
    sql += ", declaration_types.description"
    sql += ", assistance_types.description"     
    sql += ", service_types.description"
    sql += ", investment_types.description"
    sql += ", loan_types.description"
    sql += ", call_codes.description"
    sql += ", collateral_codes.description"
    sql += ", purpose_codes.description"   
    sql += ", a.* "
    sql += " from activities a, employees employees, entities entities "
    sql += ", assessment_areas assessment_areas, disaster_types disaster_types, declaration_types declaration_types"
    sql += ", assistance_types assistance_types, service_types service_types, investment_types investment_types"
    sql += ", loan_types loan_types, call_codes call_codes, collateral_codes collateral_codes, purpose_codes purpose_codes"
    sql += " where a.employee_id = employees.id"
    sql += " and a.entity_id = entities.id"
    sql += " and a.assessment_area_id = assessment_areas.id"
    sql += " and a.disaster_type_id = disaster_types.id"
    sql += " and a.declaration_type_id = declaration_types.id"
    sql += " and a.assistance_type_id = assistance_types.id"
    sql += " and a.service_type_id = service_types.id"
    sql += " and a.investment_type_id = investment_types.id"
    sql += " and a.loan_type_id = loan_types.id"
    sql += " and a.call_code_id = call_codes.id"
    sql += " and a.collateral_code_id = collateral_codes.id"
    sql += " and a.purpose_code_id = purpose_codes.id"
    sql += " and a.id = " + params[:id]
    
    #@activities = Activity.all
    @activity = Activity.find_by_sql(sql)

    json_response(@activity)
  end

  # PUT /activities/:id
  def update
    @activity.update(activity_params)
    head :no_content
  end

  # DELETE /activities/:id
  def destroy
    @activity.destroy
    head :no_content
  end

  private

  def activity_params
    # whitelist params
    params.permit(:activity_dt, :activity_type, :purpose_code_id, :employee_id, :entity_id, :contact_name, :assessment_area_id, :disaster_number, :disaster_start_dt,:disaster_end_dt,:disaster_type_id,:declaration_type_id,:assistance_type_id,:related_service_flag,:related_investment_flag,:related_loan_flag,:lmi_percentage,:is_benefit_statewide,:is_benefit_investment,:is_benefit_empowerment,:is_benefit_distressed,:is_benefit_underserved,:is_benefit_disaster,:notes, :service_type_id, :hours, :cra_hours, :is_financial_expertise, :investment_type_id, :cusip_number, :maturity_dt,:original_amount,:book_value,:unfunded_committment,:percent_of_entity_funding,:percent_of_entity_funding,:account_number,:loan_number,:loan_type_id,:call_code_id,:collateral_code_id,:purpose_code_id,:address,:city,:state,:zip,:original_amount,:term,:is_cra_qualified,:is_3rd_party,:is_affiliate,:state_code,:county_code,:tract,:msa,:income_id,:minority_id)
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end
  

end
