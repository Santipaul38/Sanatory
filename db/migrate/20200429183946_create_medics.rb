class CreateMedics < ActiveRecord::Migration[6.0]
  def change
    create_table :medics do |t|
      t.string :name
      t.string :speciallity

      t.timestamps
    end
  end
end
