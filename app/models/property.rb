class Property < ApplicationRecord
  belongs_to :owner
  has_many :buyers, dependent: :destroy
  has_many :detail_sales, through: :buyers
  has_many :renters, dependent: :destroy
  has_many :detail_rents, through: :renters
  accepts_nested_attributes_for :buyers, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :renters, reject_if: :all_blank, allow_destroy: true

  enum status: %i[venta arriendo]

end
