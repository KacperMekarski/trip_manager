class Trip < ApplicationRecord

  validates :name, :comment, presence: true

  belongs_to :holiday
  has_many :trips
  has_one :location

end
