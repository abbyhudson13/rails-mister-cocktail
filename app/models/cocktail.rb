class Cocktail < ApplicationRecord
  has_one_attached :photo
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
  validates :photo, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg'], size: { less_than: 100.megabytes , message: 'is too large' }
end
