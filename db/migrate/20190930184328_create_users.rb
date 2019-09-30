class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, uniqueness: true
      t.string :nick, null: false, uniqueness: true
      t.string :password
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :role, null: false
      t.integer :born_year, null: false
      t.timestamps
    end
    add_index :users, :id
  end
end
