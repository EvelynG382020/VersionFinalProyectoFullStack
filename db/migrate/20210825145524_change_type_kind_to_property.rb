class ChangeTypeKindToProperty < ActiveRecord::Migration[5.2]
  def up 
    change_table :properties do |t|
      t.change :kind, "integer USING CAST(kind AS integer)"
      t.change :negotiation, "integer USING CAST(negotiation AS integer)"
      t.change :kind, :integer, default: 0
      t.change :negotiation, :integer, default: 0
    end
  end

  def down
    change_table :properties do |t|
      t.change :kind, :string
      t.change :negotiation, :string
    end
  end
end
