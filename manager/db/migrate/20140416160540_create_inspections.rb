class CreateInspections < ActiveRecord::Migration
  def change
    create_table :inspections do |t|
      t.string :name
      t.timestamps
    end
  end
end
