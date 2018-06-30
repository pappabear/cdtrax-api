#!/bin/bash

clear 

for i in 1 2 3 4 5
do
   echo ' '
done

echo ' '
echo '+------------------------------------------------'
echo '| Welcome to the CDTrax backend-API Test Harness!'
echo '+------------------------------------------------'

for i in 1 2 3 4 5
do
   echo ' '
done

echo "REMINDER: Send the output to a log file and then search for 'ROLLBACK' or 'Unpermitted' for errors"

for i in 1 2 3 4 5
do
   echo ' '
done

echo '	Step 1 - Re-initializing the database...'
echo '------------------------------------------------'
rails db:drop
rails db:create
rails db:migrate

for i in 1 2 3 4 5
do
   echo ' '
done

echo '	Step 2 - Starting the API...'
echo '------------------------------------------------'
rails s -p 3001 &
sleep 3

for i in 1 2 3 4 5
do
   echo ' '
done

echo '	Step 3 - Testing the API...'
echo '------------------------------------------------'

for i in 1 2 3 
do
   echo ' '
done

echo '	Testing /banks...'
echo '------------------------------------------------'
curl -X POST --data "code=DEF&description=DEF" http://127.0.0.1:3001/banks
curl http://127.0.0.1:3001/banks
curl http://127.0.0.1:3001/banks/1
curl -X PUT --data "code=DEFx&description=DEFx" http://127.0.0.1:3001/banks/1

echo '	Testing /assessment_areas...'
echo '------------------------------------------------'
curl -X POST --data "code=DEF&description=DEF&bank_id=1" http://127.0.0.1:3001/assessment_areas
curl http://127.0.0.1:3001/assessment_areas
curl http://127.0.0.1:3001/assessment_areas/1
curl -X PUT --data "code=DEFx&description=DEFx" http://127.0.0.1:3001/assessment_areas/1

echo '	Testing /call_codes...'
echo '------------------------------------------------'
curl -X POST --data "code=DEF&description=DEF" http://127.0.0.1:3001/call_codes
curl http://127.0.0.1:3001/call_codes
curl http://127.0.0.1:3001/call_codes/1
curl -X PUT --data "code=DEFx&description=DEFx" http://127.0.0.1:3001/call_codes/1

echo '	Testing /collateral_codes...'
echo '------------------------------------------------'
curl -X POST --data "code=DEF&description=DEF" http://127.0.0.1:3001/collateral_codes
curl http://127.0.0.1:3001/collateral_codes
curl http://127.0.0.1:3001/collateral_codes/1
curl -X PUT --data "code=DEFx&description=DEFx" http://127.0.0.1:3001/collateral_codes/1

echo '	Testing /investment_types...'
echo '------------------------------------------------'
curl -X POST --data "code=DEF&description=DEF" http://127.0.0.1:3001/investment_types
curl http://127.0.0.1:3001/investment_types
curl http://127.0.0.1:3001/investment_types/1
curl -X PUT --data "code=DEFx&description=DEFx" http://127.0.0.1:3001/investment_types/1

echo '	Testing /loan_types...'
echo '------------------------------------------------'
curl -X POST --data "code=DEF&description=DEF" http://127.0.0.1:3001/loan_types
curl http://127.0.0.1:3001/loan_types
curl http://127.0.0.1:3001/loan_types/1
curl -X PUT --data "code=DEFx&description=DEFx" http://127.0.0.1:3001/loan_types/1

echo '	Testing /service_types...'
echo '------------------------------------------------'
curl -X POST --data "code=DEF&description=DEF" http://127.0.0.1:3001/service_types
curl http://127.0.0.1:3001/service_types
curl http://127.0.0.1:3001/service_types/1
curl -X PUT --data "code=DEFx&description=DEFx" http://127.0.0.1:3001/service_types/1

echo '	Testing /purpose_codes...'
echo '------------------------------------------------'
curl -X POST --data "code=DEF&description=DEF" http://127.0.0.1:3001/purpose_codes
curl http://127.0.0.1:3001/purpose_codes
curl http://127.0.0.1:3001/purpose_codes/1
curl -X PUT --data "code=DEFx&description=DEFx" http://127.0.0.1:3001/purpose_codes/1

echo '	Testing /volunteers...'
echo '------------------------------------------------'
curl -X POST --data "employee_code=DEF&name=DEF&title=wowee" http://127.0.0.1:3001/volunteers
curl http://127.0.0.1:3001/volunteers
curl http://127.0.0.1:3001/volunteers/1
curl -X PUT --data "employee_code=DEFx&name=DEFx&title=woweex" http://127.0.0.1:3001/volunteers/1

#organizations
echo '	Testing /organizations...'
echo '------------------------------------------------'
curl -X POST --data "name=Lutheran&address=330&city=Fort&state=IN&zip=46502&phone=260&website=www&revenue=0&number_of_employees=0" http://127.0.0.1:3001/organizations
curl http://127.0.0.1:3001/organizations
curl http://127.0.0.1:3001/organizations/1
curl -X PUT --data "name=Lutheranx&address=330&city=Fort&state=IN&zip=46502&phone=260&website=www&revenue=0&number_of_employees=0" http://127.0.0.1:3001/organizations/1

#services
echo '	Testing /services...'
echo '------------------------------------------------'
curl -X POST --data "activity_dt=1&purpose_code_id=1&volunteer_id=1&organization_id=1&service_type_id=1&assessment_area_id=1&total_hours=1&cra_hours=1" http://127.0.0.1:3001/services
curl http://127.0.0.1:3001/services
curl http://127.0.0.1:3001/services/1
curl -X PUT --data "activity_dt=1&purpose_code_id=1&volunteer_id=1&organization_id=1&service_type_id=1&assessment_area_id=1&total_hours=1&cra_hours=1" http://127.0.0.1:3001/services/1

#investments
echo '	Testing /investments...'
echo '------------------------------------------------'
curl -X POST --data "activity_dt=1&purpose_code_id=1&organization_id=1&investment_type_id=1&cusip_number=1&maturity_dt=1&original_amount=1&book_value=1&unfunded_committment=1&percent_of_entity_funding=42" http://127.0.0.1:3001/investments
curl http://127.0.0.1:3001/investments
curl http://127.0.0.1:3001/investments/1
curl -X PUT --data "activity_dt=1&purpose_code_id=1&organization_id=1&investment_type_id=1&cusip_number=1&maturity_dt=1&original_amount=1&book_value=1&unfunded_committment=1&percent_of_entity_funding=42" http://127.0.0.1:3001/investments/1

#loans
echo '	Testing /loans...'
echo '------------------------------------------------'
curl -X POST --data "activity_dt=1&purpose_code_id=1&organization_id=1&account_number=1&loan_number=1&loan_type_id=1&call_code_id=1&collateral_code_id=1&lien_address=1&lien_city=1&lien_state=1&lien_zip=1&term=1&is_cra_qualified=1&is_3rd_party=1&is_affiliate=1&state_code=1&county_code=1&tract=1&msa" http://127.0.0.1:3001/loans
curl http://127.0.0.1:3001/loans
curl http://127.0.0.1:3001/loans/1
curl -X PUT --data "activity_dt=1&purpose_code_id=1&organization_id=1&account_number=1&loan_number=1&loan_type_id=1&call_code_id=1&collateral_code_id=1&lien_address=1&lien_city=1&lien_state=1&lien_zip=1&term=1&is_cra_qualified=1&is_3rd_party=1&is_affiliate=1&state_code=1&county_code=1&tract=1&msa" http://127.0.0.1:3001/loans/1

for i in 1 2 3 4 5
do
   echo ' '
done

echo '	Step 4 - Seeding the database...'
echo '------------------------------------------------'
rails db:seed

for i in 1 2 3 4 5
do
   echo ' '
done

echo '------------------------------------------------'
echo 'Done.'
echo '------------------------------------------------'
echo ' ' 
