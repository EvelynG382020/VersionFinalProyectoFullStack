class ChangeColumnPhoneToOwner < ActiveRecord::Migration[5.2]
  def change
    change_column :owners, :phone, :integer
    change_column :owners, :phone, :string
  end
end
