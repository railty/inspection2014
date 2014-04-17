class CreateInspectionTemplates < ActiveRecord::Migration
  def change
    create_table :inspection_templates do |t|
      t.string :name
      t.timestamps
    end
  end
end
