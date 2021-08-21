class Buyer < ApplicationRecord
  belongs_to :owner
  belongs_to :property
  has_many :detail_sales, dependent: :destroy
end
