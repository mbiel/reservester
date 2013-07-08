class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :email
      t.datetime :request_time
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
