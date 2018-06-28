class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.integer :purpose_code_id
      t.integer :volunteer_id
      t.integer :organization_id
      t.integer :assessment_area_id
      t.integer :service_type_id
      t.integer :total_hours
      t.integer :cra_hours

      t.timestamps
    end
  end
end
