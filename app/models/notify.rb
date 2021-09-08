class Notify < ApplicationRecord
    validates :title, :description, presence: true
    validates :title, length: { minimum: 10, too_short: "Minimo son %{count} caracteres."}
    validates :description, length: { minimum: 20, too_short: "Minimo son %{count} caracteres."}

end
