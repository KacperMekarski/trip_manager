class Contractor < ApplicationRecord

  validates :name, :role, :cost, presence: true
  validates :name, uniqueness: true

  belongs_to :trip

end
