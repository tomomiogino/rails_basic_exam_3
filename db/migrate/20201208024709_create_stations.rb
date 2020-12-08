class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :route, null: false
      t.string :name, null: false
      t.integer :minutes_foot, null: false
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
