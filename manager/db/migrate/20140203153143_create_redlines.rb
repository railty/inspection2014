class CreateRedlines < ActiveRecord::Migration
  def change
    create_table :redlines do |t|
      t.string :name
      t.timestamps
    end
    add_attachment :redlines, :xml
  end
end
