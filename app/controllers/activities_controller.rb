class ActivitiesController < ApplicationController


  #before_action :set_activity, only: [:show, :update, :destroy]
  before_action :set_activity, only: [:update, :destroy]


  # GET /activities
  def index
    @activities = Activity.find_by_sql(getViewSQL + " order by activity_dt")
    json_response(@activities)
  end

  # POST /activities
  def create
    @activity = Activity.create!(activity_params)
    json_response(@activity)
  end

  # GET /activities/:id
  def show
    sql = getViewSQL + " where a.id=" + params[:id] + " LIMIT 1"
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
    params.permit(:activity_dt, :activity_type_id, :purpose_code_id,
                                :employee_id, :entity_id, 
                                :contact_name, :assessment_area_id, :disaster_number, 
                                :disaster_start_dt, :disaster_end_dt, 
                                :disaster_type_id, :declaration_type_id, :assistance_type_id, 
                                :related_service_flag, :related_investment_flag, 
                                :related_loan_flag, :lmi_percentage, :is_benefit_statewide, 
                                :is_benefit_investment, :is_benefit_empowerment, :is_benefit_distressed, 
                                :is_benefit_underserved, :is_benefit_disaster, :notes, 
                                :service_type_id, :hours, :cra_hours, :is_financial_expertise, 
                                :investment_type_id, :cusip_number, 
                                :maturity_dt, :original_amount, :book_value, :unfunded_committment, 
                                :percent_of_entity_funding, :account_number, 
                                :loan_number, :loan_type_id, :call_code_id, :collateral_code_id, 
                                :address, :city, :state, :zip, :term, 
                                :is_cra_qualified, :is_3rd_party, :is_affiliate, :state_code, :county_code, 
                                :tract, :msa, :income_id, :minority_id)
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end
  
  def getViewSQL
    
    sql = "select a.id
           ,a.activity_dt
	         ,TO_CHAR(a.activity_dt, 'MM/DD/YYYY') activity_dt_formatted 
           ,a.disaster_start_dt
           ,a.disaster_end_dt
           ,a.maturity_dt
           ,TO_CHAR(a.disaster_start_dt, 'MM/DD/YYYY') disaster_start_dt_formatted
           ,TO_CHAR(a.disaster_end_dt, 'MM/DD/YYYY') disaster_end_dt_formatted
           ,TO_CHAR(a.maturity_dt, 'MM/DD/YYYY') maturity_dt_formatted
           ,a.contact_name
           ,a.disaster_number
           ,a.related_service_flag
           ,a.related_investment_flag
           ,a.related_loan_flag
           ,a.lmi_percentage
           ,a.is_benefit_statewide
           ,a.is_benefit_investment
           ,a.is_benefit_empowerment
           ,a.is_benefit_distressed
           ,a.is_benefit_underserved
           ,a.is_benefit_disaster
           ,a.notes
           ,a.hours
           ,a.cra_hours
           ,a.is_financial_expertise
           ,a.cusip_number
           ,a.original_amount
           ,a.book_value
           ,a.unfunded_committment
           ,a.percent_of_entity_funding
           ,a.account_number
           ,a.loan_number
           ,a.address
           ,a.city
           ,a.state
           ,a.zip
           ,a.term
           ,a.is_cra_qualified
           ,a.is_3rd_party
           ,a.is_affiliate
           ,a.state_code
           ,a.county_code
           ,a.tract
           ,a.msa
           ,a.purpose_code_id
           ,b.description purpose_code_description
           ,a.employee_id
           ,c.name employee_name, c.title employee_title 
    	     ,a.entity_id
           ,d.name entity_name
           ,d.address entity_address
           ,d.city entity_city
           ,d.state entity_state
           ,d.zip entity_zip
    	     ,a.assessment_area_id
           ,e.description assessment_area_description
    	     ,a.disaster_type_id
           ,f.description disaster_type_description
    	     ,a.declaration_type_id
           ,g.description declaration_type_description
    	     ,a.assistance_type_id
           ,h.description assistance_type_description
    	     ,a.service_type_id
           ,i.description service_type_description
    	     ,a.investment_type_id
           ,j.description investment_type_description
    	     ,a.loan_type_id
           ,k.description loan_type_description
    	     ,a.call_code_id
           ,l.description call_code_description
    	     ,a.collateral_code_id
           ,m.description collateral_code_description      
           ,a.activity_type_id
           ,n.description activity_type_description
    from activities a
          full outer join purpose_codes b on a.purpose_code_id = b.id
          full outer join employees c on a.employee_id = c.id
          full outer join entities d on a.entity_id = d.id
          full outer join assessment_areas e on a.assessment_area_id = e.id
          full outer join disaster_types f on a.disaster_type_id = f.id
          full outer join declaration_types g on a.declaration_type_id = g.id
          full outer join assistance_types h on a.assistance_type_id = h.id
          full outer join service_types i on a.service_type_id = i.id
          full outer join investment_types j on a.investment_type_id = j.id
          full outer join loan_types k on a.loan_type_id = k.id
          full outer join call_codes l on a.call_code_id = l.id
          full outer join collateral_codes m on a.collateral_code_id = m.id
          full outer join activity_types n on a.activity_type_id = n.id"
    
    return sql

  end
  
end
