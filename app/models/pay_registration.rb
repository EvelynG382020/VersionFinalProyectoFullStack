class PayRegistration < ApplicationRecord
    validates :mail, :name, :phone, :last_name, presence: true
    belongs_to :user

    def self.has_payment?(user) 
        PayRegistration.where(status: "pending")
    end
end
