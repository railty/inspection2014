class CreateAttrTemplates < ActiveRecord::Migration
  def change
    create_table :attr_templates do |t|
      t.references :inspection_template
      t.string :name
      t.string :type
      t.string :value
      
      t.integer :foreign_key
      t.integer :ordinal
      t.string :group
      t.boolean :visible
      t.boolean :editable
      t.boolean :required
      t.string :input

      t.timestamps
    end
  end
end
