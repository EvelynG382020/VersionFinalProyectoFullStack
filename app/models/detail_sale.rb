class DetailSale < ApplicationRecord
  belongs_to :buyer
  enum contract: %i[pendiente firmado]
  enum purchase_contract: %i[en_ abogado en_banco en_notaria en_conservador]
  enum inscription: %i[en_estudio inscrita]
  validates :detail, :caratula, :url, :value, :contract, :purchase_contract, :inscription, presence: true
end
