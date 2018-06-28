class CreateInvestments < ActiveRecord::Migration[5.0]
  def change
    create_table :investments do |t|
      t.integer :purpose_code_id
      t.integer :organization_id
      t.integer :investment_type_id
      t.string :cusip_number
      t.date :maturity_dt
      t.string :original_amount
      t.string :book_value
      t.string :unfunded_committment
      t.string :percent_of_entity_funding

      t.timestamps
    end
  end
end
