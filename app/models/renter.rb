class Renter < ApplicationRecord
  belongs_to :property
  has_many :detail_rents, dependent: :destroy
end
