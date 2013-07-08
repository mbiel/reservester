class AddMessageToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :message, :string
  end
end
