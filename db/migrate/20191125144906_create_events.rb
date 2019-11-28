class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.date :start
      t.date :end
      t.integer :max_particpants
      t.text :description
      t.references :hospital, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
