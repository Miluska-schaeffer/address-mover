class Move < ApplicationRecord
  has_many :updates, dependent: :destroy
  belongs_to :address
 

  validates :moving_date, presence: true
end


