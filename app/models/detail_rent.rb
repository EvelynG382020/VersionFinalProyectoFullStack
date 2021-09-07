class DetailRent < ApplicationRecord
  belongs_to :renter
  enum contract: [:pendiente, :firmado]
  validates :detail, :contract, :value, :date, presence: true
end
