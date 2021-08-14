class ChangePhoneToBuyers < ActiveRecord::Migration[5.2]
  def change
    change_column :buyers, :phone, :integer
    change_column :buyers, :phone, :string

    change_column :buyers, :rut, :integer
    change_column :buyers, :rut, :string
  end
end
