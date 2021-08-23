class PayRegistration < ApplicationRecord
    validates :email, :name, :phone, :last_name, presence: true

end
