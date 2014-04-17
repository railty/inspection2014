class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :keys
      t.string :redline
      t.timestamps
    end
  end
end
