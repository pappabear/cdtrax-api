class CreateInvestments < ActiveRecord::Migration[5.0]
  def change
    create_table :investments do |t|
      t.integer :purpose_code_id
      t.integer :organization_id
      t.integer :investment_type_id
      t.string :cusip_number
      t.date :maturity_dt
      t.integer :original_amount
      t.integer :book_value
      t.integer :unfunded_committment
      t.integer :percent_of_entity_funding
      t.boolean :is_cra_qualified

      t.timestamps
    end
  end
end
