class RemoveSpeciallityFromMedic < ActiveRecord::Migration[6.0]
  def change

    remove_column :medics, :speciallity, :string
  end
end
