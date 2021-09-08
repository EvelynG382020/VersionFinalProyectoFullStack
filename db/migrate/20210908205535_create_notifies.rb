class CreateNotifies < ActiveRecord::Migration[5.2]
  def change
    create_table :notifies do |t|
      t.string :name_user
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
