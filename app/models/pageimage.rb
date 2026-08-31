class Pageimage < ApplicationRecord
  belongs_to :textbook
  has_one_attached :image

  validates :title, presence: true
  validates :image, presence: true

  def self.natural_title_key(title)
    title.to_s.scan(/\d+|\D+/).map do |part|
      if part.match?(/\A\d+\z/)
        [0, part.to_i]
      else
        [1, part.downcase]
      end
    end
  end

  def remove_image
    image.purge if image.attached?
  end

end
