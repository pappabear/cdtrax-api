class InvestmentsController < ApplicationController


    before_action :set_investment, only: [:update, :destroy]
  
    # GET /investments
    def index
      @investments = Investment.find_by_sql(get_view_sql + " order by activity_dt")
      json_response(@investments)
    end
  
    # POST /investments
    def create
      @investment = Investment.create!(investment_params)
      json_response(@investment)
    end
  
    # GET /investments/:id
    def show
      @investment = Investment.find_by_sql(get_view_sql + " where a.id=" + params[:id] + " LIMIT 1")
      json_response(@investment)
    end
  
    # PUT /investments/:id
    def update
      @investment.update(investment_params)
      head :no_content
    end
  
    # DELETE /investments/:id
    def destroy
      @investment.destroy
      head :no_content
    end

  
    private

  
    def investment_params
      # whitelist params
      params.permit(:id, :activity_dt, :purpose_code_id, :organization_id, :investment_type_id, :cusip_number, :maturity_dt, :original_amount, :book_value, :unfunded_committment, :percent_of_entity_funding, :is_cra_qualified)
    end
  
    def set_investment
      @investment = Investment.find(params[:id])
    end

    def get_view_sql
      sql = "select a.id
              ,a.activity_dt
              ,TO_CHAR(a.activity_dt, 'MM/DD/YYYY') activity_dt_formatted 
              ,TO_CHAR(a.maturity_dt, 'MM/DD/YYYY') maturity_dt_formatted 
              ,a.is_cra_qualified, a.cusip_number, a.maturity_dt, a.original_amount, a.book_value, a.unfunded_committment, a.percent_of_entity_funding
              ,a.purpose_code_id
              ,b.description purpose_code_description
              ,a.organization_id
              ,d.name organization_name
              ,a.investment_type_id
              ,e.description investment_type_description
        from investments a
            left outer join purpose_codes b on a.purpose_code_id = b.id
            left outer join organizations d on a.organization_id = d.id
            left outer join investment_types e on a.investment_type_id = e.id
            "
      return sql
    end
        
end
