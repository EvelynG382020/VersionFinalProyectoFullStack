class AddUserToPayRegistration < ActiveRecord::Migration[5.2]
  def change
    add_reference :pay_registrations, :user, foreign_key: true
    add_column :pay_registrations, :payment_id, :string
    add_column :pay_registrations, :status, :string, default: "pending"
  end
end
