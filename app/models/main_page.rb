class MainPage < ApplicationRecord
  has_one_attached :image
  has_many :commenting
  has_many :replies
end
