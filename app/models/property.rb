class Property < ApplicationRecord
  belongs_to :owner
  has_many :buyers
  has_many :detail_sales, through: :buyers
  has_many :renters, dependent: :destroy
  has_many :detail_rents, through: :renters
end
