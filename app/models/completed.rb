class Completed < ApplicationRecord
  belongs_to :user
  belongs_to :property
  validates :user, uniqueness: { scope: :property}
end
