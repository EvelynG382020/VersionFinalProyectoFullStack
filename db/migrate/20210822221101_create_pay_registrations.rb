class CreatePayRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :pay_registrations do |t|
      t.string :name
      t.string :last_name
      t.string :mail
      t.string :phone

      t.timestamps
    end
  end
end
