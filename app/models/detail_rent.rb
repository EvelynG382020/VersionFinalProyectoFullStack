class DetailRent < ApplicationRecord
  belongs_to :renter
  has_one_attached :image
  enum contract: [:pendiente, :firmado]
end
