class CreateAssistanceTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :assistance_types do |t|
      t.string :code
      t.string :description

      t.timestamps
    end
  end
end
