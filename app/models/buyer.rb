class Buyer < ApplicationRecord
  belongs_to :property, optional: true
  has_many :detail_sales, dependent: :destroy
end
