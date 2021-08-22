class RemoveReferencesToBuyer < ActiveRecord::Migration[5.2]
  def change
    remove_reference :buyers, :owner, index: true
  end
end
