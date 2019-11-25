class AddHospitalToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :hospital, foreign_key: true
  end
end
