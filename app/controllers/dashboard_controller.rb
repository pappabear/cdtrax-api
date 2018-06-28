class DashboardController < ApplicationController

  # GET /activities
  def get_service_hours_dashboard_data
    
    payload = []
    
    sql1 = "select extract(year from activity_dt) service_year, sum(hours) hours, sum(cra_hours) cra_hours
           from activities
           group by extract(year from activity_dt)"
    service_hours_by_year = Activity.find_by_sql(sql1)
    payload.push "service_hours_by_year"
    payload.push service_hours_by_year
    
    sql2 = "select EXTRACT(YEAR FROM activity_dt) service_year, count(distinct(entity_id)) sum_of_entities_with_service_hours
            from activities
            where hours > 0 
            GROUP BY EXTRACT(YEAR FROM activity_dt)"
    entities_with_service_hours_by_year = Activity.find_by_sql(sql2)            
    payload.push "entities_with_service_hours_by_year"
    payload.push entities_with_service_hours_by_year

    sql3 = "select EXTRACT(YEAR FROM activity_dt) service_year, count(id) sum_of_activities_with_service_hours
            from activities
            where hours > 0 
            GROUP BY EXTRACT(YEAR FROM activity_dt)"
    sum_of_activities_with_service_hours = Activity.find_by_sql(sql3)            
    payload.push "sum_of_activities_with_service_hours"
    payload.push sum_of_activities_with_service_hours

    sql4 = "select EXTRACT(YEAR FROM activity_dt) service_year, count(distinct(assessment_area_id)) sum_of_areas_with_service_hours
            from activities
            where hours > 0 
            GROUP BY EXTRACT(YEAR FROM activity_dt)"
    sum_of_areas_with_service_hours = Activity.find_by_sql(sql4)            
    payload.push "sum_of_areas_with_service_hours"
    payload.push sum_of_areas_with_service_hours

    sql5 = "select EXTRACT(YEAR FROM activity_dt) service_year, count(distinct(employee_id)) sum_of_employees_with_service_hours
            from activities
            where hours > 0 
            GROUP BY EXTRACT(YEAR FROM activity_dt)"
    sum_of_employees_with_service_hours  = Activity.find_by_sql(sql5)            
    payload.push "sum_of_employees_with_service_hours"
    payload.push sum_of_employees_with_service_hours
    
    json_response(payload)
  end

  
end
