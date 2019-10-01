class Trip < ApplicationRecord

  validates :name, :comment, presence: true

  belongs_to :holiday
  has_many :contractors
  has_many :attractions
  has_one :location

end
