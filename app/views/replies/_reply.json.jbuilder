json.extract! reply, :id, :reply, :main_page_id, :commenting_id, :parent_id, :created_at, :updated_at
json.url reply_url(reply, format: :json)
