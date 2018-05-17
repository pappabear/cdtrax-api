class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.date :activity_dt
      t.integer :activity_type_id
      t.integer :purpose_code_id
      t.integer :employee_id
      t.integer :entity_id
      t.string :contact_name
      t.integer :assessment_area_id
      t.string :disaster_number
      t.date :disaster_start_dt
      t.date :disaster_end_dt
      t.integer :disaster_type_id
      t.integer :declaration_type_id
      t.integer :assistance_type_id
      t.boolean :related_service_flag
      t.boolean :related_investment_flag
      t.boolean :related_loan_flag
      t.integer :lmi_percentage
      t.boolean :is_benefit_statewide
      t.boolean :is_benefit_investment
      t.boolean :is_benefit_empowerment
      t.boolean :is_benefit_distressed
      t.boolean :is_benefit_underserved
      t.boolean :is_benefit_disaster
      t.text :notes
      t.integer :service_type_id
      t.integer :hours
      t.integer :cra_hours
      t.boolean :is_financial_expertise
      t.integer :investment_type_id
      t.string :cusip_number
      t.date :maturity_dt
      t.integer :original_amount
      t.integer :book_value
      t.integer :unfunded_committment
      t.integer :percent_of_entity_funding
      t.string :account_number
      t.string :loan_number
      t.integer :loan_type_id
      t.integer :call_code_id
      t.integer :collateral_code_id
      t.integer :purpose_code_id
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :original_amount
      t.string :term
      t.boolean :is_cra_qualified
      t.boolean :is_3rd_party
      t.boolean :is_affiliate
      t.string :state_code
      t.string :county_code
      t.string :tract
      t.string :msa
      t.integer :income_id
      t.integer :minority_id

      t.timestamps
    end
  end
end
