class AddBankToAssessmentAreas < ActiveRecord::Migration[5.0]
  def change
    add_column :assessment_areas, :bank_id, :integer
  end
end
