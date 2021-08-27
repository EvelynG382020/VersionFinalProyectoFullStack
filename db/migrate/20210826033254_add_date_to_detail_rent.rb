class AddDateToDetailRent < ActiveRecord::Migration[5.2]
  def change
    add_column :detail_rents, :date, :date
  end
end
