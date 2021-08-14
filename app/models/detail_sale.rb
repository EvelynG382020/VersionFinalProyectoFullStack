class DetailSale < ApplicationRecord
  belongs_to :buyer
  has_one_attached :image
  enum contract: [:pendiente, :firmado]
end
