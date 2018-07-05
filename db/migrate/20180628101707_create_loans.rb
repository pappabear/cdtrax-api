class CreateLoans < ActiveRecord::Migration[5.0]
  def change
    create_table :loans do |t|
      t.integer :purpose_code_id
      t.integer :organization_id
      t.integer :loan_type_id
      t.integer :call_code_id
      t.integer :collateral_code_id
      t.string :account_number
      t.string :loan_number
      t.integer :amount
      t.string :term
      t.string :lien_address
      t.string :lien_city
      t.string :lien_state
      t.string :lien_zip
      t.boolean :is_cra_qualified
      t.boolean :is_3rd_party
      t.boolean :is_affiliate
      t.string :state_code
      t.string :county_code
      t.string :tract
      t.string :msa

      t.timestamps
    end
  end
end
