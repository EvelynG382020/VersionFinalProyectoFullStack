class DetailRent < ApplicationRecord
  belongs_to :renter
  enum contract: [:pendiente, :firmado]
end
