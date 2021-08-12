class Renter < ApplicationRecord
  belongs_to :owner
  belongs_to :property
  has_many :detail_rents
end
