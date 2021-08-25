class AddLocationToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :location, :string
    add_column :properties, :city, :string
  end
end
