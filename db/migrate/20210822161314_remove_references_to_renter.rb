class RemoveReferencesToRenter < ActiveRecord::Migration[5.2]
  def change
    remove_reference :renters, :owner, index: true
  end
end
