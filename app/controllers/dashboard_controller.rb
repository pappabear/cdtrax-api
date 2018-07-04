class DashboardController < ApplicationController

  # GET /dashboard
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

  
end
