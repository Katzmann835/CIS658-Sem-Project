class Reply < ApplicationRecord
  belongs_to :main_page
  belongs_to :commenting
end
# This point of this is to reply to both items in the main page and in the comments
