class ChangeStartEndToBeDatetimeInEvents < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :start, :datetime
    change_column :events, :end, :datetime
  end
end
