class DetailSale < ApplicationRecord
  belongs_to :buyer
  enum contract: [:pendiente, :firmado]
  has_one_attached :image
end
