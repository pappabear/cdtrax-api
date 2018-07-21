class DashboardController < ApplicationController

  # GET /dashboard/service_hours_analytics
  def service_hours_analytics
    
    payload = []
    
    sql1 = "select 'service_hours_by_year' analytic, extract(year from activity_dt) service_year, sum(total_hours) total_hours, sum(cra_hours) cra_hours
           from services
           group by extract(year from activity_dt)
           order by extract(year from activity_dt)"
    service_hours_by_year = Service.find_by_sql(sql1)
    payload.push service_hours_by_year
    
    sql2 = "select 'organizations_with_service_hours_by_year' analytic, EXTRACT(YEAR FROM activity_dt) service_year, count(distinct(organization_id)) sum_of_organizations_with_service_hours
            from services
            where total_hours > 0 
            GROUP BY EXTRACT(YEAR FROM activity_dt)
            order by extract(year from activity_dt)"
    sum_of_organizations_with_service_hours = Service.find_by_sql(sql2)            
    payload.push sum_of_organizations_with_service_hours

    sql3 = "select 'sum_of_activities_with_service_hours' analytic, EXTRACT(YEAR FROM activity_dt) service_year, count(id) sum_of_activities_with_service_hours
            from services
            where total_hours > 0 
            GROUP BY EXTRACT(YEAR FROM activity_dt)
            order by extract(year from activity_dt)"
    sum_of_activities_with_service_hours = Service.find_by_sql(sql3)            
    payload.push sum_of_activities_with_service_hours

    sql4 = "select 'sum_of_areas_with_service_hours' analytic, EXTRACT(YEAR FROM activity_dt) service_year, count(distinct(assessment_area_id)) sum_of_areas_with_service_hours
            from services
            where total_hours > 0 
            GROUP BY EXTRACT(YEAR FROM activity_dt)
            order by extract(year from activity_dt)"
    sum_of_areas_with_service_hours = Service.find_by_sql(sql4)            
    payload.push sum_of_areas_with_service_hours

    sql5 = "select 'sum_of_volunteers_with_service_hours' analytic, EXTRACT(YEAR FROM activity_dt) service_year, count(distinct(volunteer_id)) sum_of_volunteers_with_service_hours
            from services
            where total_hours > 0 
            GROUP BY EXTRACT(YEAR FROM activity_dt)
            order by extract(year from activity_dt)"
    sum_of_volunteers_with_service_hours  = Service.find_by_sql(sql5)            
    payload.push sum_of_volunteers_with_service_hours
    
    json_response(payload)
  end



  # GET /dashboard/loans_analytics
  def loan_analytics
    
    payload = []
    
    sql1 = "select 'loan_amounts_by_year' analytic, 
              a.loan_year, a.cra_amount, b.total_amount
              from 
              (
              	select extract(year from activity_dt) loan_year, count(*), sum(amount) cra_amount
              	from loans
              	where is_cra_qualified = true
              	group by extract(year from activity_dt)
              	order by extract(year from activity_dt)
              ) as a, 
              (
              	select extract(year from activity_dt) loan_year, count(*), sum(amount) total_amount
              	from loans
              	group by extract(year from activity_dt)
              	order by extract(year from activity_dt)
              ) as b
              where a.loan_year = b.loan_year
              order by a.loan_year
              "
    loan_amounts_by_year = Loan.find_by_sql(sql1)
    payload.push loan_amounts_by_year
    
    sql2 = "select 'count_of_organizations_with_loan_by_year' analytic, EXTRACT(YEAR FROM activity_dt) loan_year, count(distinct(organization_id)) count_of_organizations_with_loan_by_year
            from loans
            GROUP BY EXTRACT(YEAR FROM activity_dt)
            order by extract(year from activity_dt)"
    count_of_organizations_with_loan_by_year = Loan.find_by_sql(sql2)            
    payload.push count_of_organizations_with_loan_by_year

    sql3 = "select 'count_of_loans_by_year' analytic, EXTRACT(YEAR FROM activity_dt) service_year, count(id) count_of_loans_by_year
            from loans
            GROUP BY EXTRACT(YEAR FROM activity_dt)
            order by extract(year from activity_dt)"
    count_of_loans_by_year = Loan.find_by_sql(sql3)            
    payload.push count_of_loans_by_year
        
    json_response(payload)
  end


  # GET /dashboard/loans_analytics
  def investment_analytics
    
    payload = []
    
    sql1 = "select 'investment_amounts_by_year' analytic, 
              a.investment_year, a.cra_amount, b.non_cra_amount
              from 
              (
              	select extract(year from activity_dt) investment_year, sum(original_amount) cra_amount
              	from investments
              	where is_cra_qualified = true
              	group by extract(year from activity_dt)
              	order by extract(year from activity_dt)
              ) as a, 
              (
              	select extract(year from activity_dt) investment_year, sum(original_amount) non_cra_amount
              	from investments
              	where is_cra_qualified <> true
              	group by extract(year from activity_dt)
              	order by extract(year from activity_dt)
              ) as b
              where a.investment_year = b.investment_year
              order by a.investment_year"
    investment_amounts_by_year = Investment.find_by_sql(sql1)
    payload.push investment_amounts_by_year
    
    sql2 = "select 'count_of_organizations_with_investments_by_year' analytic, EXTRACT(YEAR FROM activity_dt) investment_year, count(distinct(organization_id)) count_of_organizations_with_investment_by_year
            from investments
            GROUP BY EXTRACT(YEAR FROM activity_dt)
            order by extract(year from activity_dt)"
    count_of_organizations_with_investment_by_year = Investment.find_by_sql(sql2)            
    payload.push count_of_organizations_with_investment_by_year

    sql3 = "select 'count_of_investments_by_year' analytic, EXTRACT(YEAR FROM activity_dt) service_year, count(id) count_of_investments_by_year
            from loans
            GROUP BY EXTRACT(YEAR FROM activity_dt)
            order by extract(year from activity_dt)"
    count_of_investments_by_year = Investment.find_by_sql(sql3)            
    payload.push count_of_investments_by_year

    json_response(payload)
  end

end
