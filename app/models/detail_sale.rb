class DetailSale < ApplicationRecord
  belongs_to :buyer
  enum contract: %i[pendiente firmado]
  enum purchase_contract: %i[en_banco en_notaria conservador finalizado]
  enum inscription: %i[en_estudio inscrita]
end
