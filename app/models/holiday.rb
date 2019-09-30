class Holiday < ApplicationRecord

  validates :name, :comment, :country, presence: true

  has_and_belongs_to_many :users

end
