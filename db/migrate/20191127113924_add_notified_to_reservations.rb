class AddNotifiedToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :notified, :boolean, default: false
  end
end
