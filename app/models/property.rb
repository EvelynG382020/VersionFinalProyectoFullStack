class Property < ApplicationRecord
  belongs_to :owner, optional: true
  has_many :buyers, dependent: :destroy
  has_many :detail_sales, through: :buyers
  has_many :renters, dependent: :destroy
  has_many :detail_rents, through: :renters
  accepts_nested_attributes_for :buyers, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :renters, reject_if: :all_blank, allow_destroy: true

  enum status: %i[en_proceso disponible finalizado]
  enum kind: %i[casa departamento parcela terreno]
  enum negotiation: %i[banco contado]
  enum transaction_type: %i[venta arriendo]

  scope :available_property, -> { where(status: disponible) }
  

end
