class CreateHolidays < ActiveRecord::Migration[6.0]
  def change
    create_table :holidays do |t|
      t.string :name, null: false
      t.text :comment, null: false
      t.string :country, null: false
      t.date :planned_date, comment: 'Start date of planned holiday'
      t.integer :length, comment: 'Length in days of planned holiday'
      t.integer :priority, comment: 'Priority of holiday from user point of view'
      t.integer :cost, comment: 'Estimated cost of holiday'
      t.timestamps
    end
    create_table :holidays_users, id: false do |t|
      t.belongs_to :holiday, index: true
      t.belongs_to :user, index: true
    end
  end
end
