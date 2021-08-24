class ChangeTypeContracToDetailRent < ActiveRecord::Migration[5.2]
  def up 
    change_table :detail_rents do |t|
      t.change :contract, "integer USING CAST(contract AS integer)"
      t.change :contract, :integer, default: 0
    end
  end

  def down
    change_table :detail_rents do |t|
      t.change :contract, :string
    end
  end
end
