class Commenting < ApplicationRecord
  belongs_to :main_page
  #validates :content, presence :true
end
