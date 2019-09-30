class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :name, null: false
      t.text :comment, null: false
      t.date :planned_date, comment: 'Planned date of trip during holidays'
      t.timestamps
    end
  end
end
