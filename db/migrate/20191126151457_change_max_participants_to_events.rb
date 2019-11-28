class ChangeMaxParticipantsToEvents < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :max_particpants, :max_participants
  end
end
