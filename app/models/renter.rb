class Renter < ApplicationRecord
  belongs_to :property, optional: true
  has_many :detail_rents, dependent: :destroy
  validates :rut, :name, :phone, :mail, :detail, presence: true
end
