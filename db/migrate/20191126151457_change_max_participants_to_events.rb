class ChangeMaxParticipantsToEvents < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :max_participants, :max_participants
  end
end
