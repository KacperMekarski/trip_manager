class Attraction < ApplicationRecord

  validates :status, :name, :address, presence: true

  belongs_to :trip

end
