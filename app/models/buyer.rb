class Buyer < ApplicationRecord
  belongs_to :property, optional: true
  has_many :detail_sales, dependent: :destroy
  validates :name, :phone, :rut, :mail, :detail, presence: true
end
