class AddNegotiationToProperty < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :negotiation, :string
  end
end
