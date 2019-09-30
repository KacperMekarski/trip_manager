class Trip < ApplicationRecord

  validates :name, :comment, presence: true

  belongs_to :holiday

end
