class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :country, null: false
      t.string :city, null: false
      t.timestamps
    end
    add_reference :locations, :trip, foreign_key: true
  end
end
