class ChangeColumnToOwners < ActiveRecord::Migration[5.2]
  def change
    change_column :owners, :rut, :integer
    change_column :owners, :rut, :string
  end
end
