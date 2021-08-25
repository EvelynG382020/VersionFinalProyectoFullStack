class Renter < ApplicationRecord
  belongs_to :property, optional: true
  has_many :detail_rents, dependent: :destroy
end
