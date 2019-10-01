class CreateAttractions < ActiveRecord::Migration[6.0]
  def change
    create_table :attractions do |t|
      t.integer :status, null: false, default: 1
      t.string :name, null: false
      t.text :comment
      t.string :address, null: false
      t.integer :cost
      t.timestamps
    end
    add_reference :attractions, :trip, foreign_key: true
  end
end
