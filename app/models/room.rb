class Room < ApplicationRecord
  has_one_attached :image

  validates :address_line1, presence: true
  validates :title, presence: true
end
