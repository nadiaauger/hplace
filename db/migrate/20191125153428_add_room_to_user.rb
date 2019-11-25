class AddRoomToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :room, :string
  end
end
