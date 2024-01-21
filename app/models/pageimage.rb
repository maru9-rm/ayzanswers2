class Pageimage < ApplicationRecord
  belongs_to :textbook
  has_one_attached :image
end
