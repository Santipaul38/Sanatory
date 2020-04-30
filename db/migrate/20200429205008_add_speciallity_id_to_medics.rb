class AddSpeciallityIdToMedics < ActiveRecord::Migration[6.0]
  def change
    add_reference :medics, :speciallity, null: true, foreign_key: true
  end
end
