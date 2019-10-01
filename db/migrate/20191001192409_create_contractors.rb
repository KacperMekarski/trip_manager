class CreateContractors < ActiveRecord::Migration[6.0]
  def change
    create_table :contractors do |t|
      t.string :name, null: false, uniqueness: true
      t.integer :role, null: false, comment: 'accomodation, transport, restaurant, tourist guide, etc.'
      t.text :description
      t.string :email
      t.string :phone_number
      t.string :cost, null: false, comment: 'estimated cost of service'
      t.string :address
      t.timestamps
    end
    add_reference :contractors, :trip, foreign_key: true
  end
end
