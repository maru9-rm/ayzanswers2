class Pageimage < ApplicationRecord
  belongs_to :textbook
  has_one_attached :image

  validates :title, presence: true
  validates :image, presence: true
end
