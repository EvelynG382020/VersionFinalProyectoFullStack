class ChangePhoneAndRutToRenter < ActiveRecord::Migration[5.2]
  def change
    change_column :renters, :phone, :integer
    change_column :renters, :phone, :string

    change_column :renters, :rut, :integer
    change_column :renters, :rut, :string
  end
end
