class CreateSpeciallities < ActiveRecord::Migration[6.0]
  def change
    create_table :speciallities do |t|
      t.string :name
      t.integer :charge

      t.timestamps
    end
  end
end
