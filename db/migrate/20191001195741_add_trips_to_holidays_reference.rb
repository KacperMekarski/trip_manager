class AddTripsToHolidaysReference < ActiveRecord::Migration[6.0]
  def change
    add_reference :trips, :holiday, foreign_key: true
  end
end
