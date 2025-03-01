json.extract! main_page, :id, :title, :content, :created_at, :updated_at
json.url main_page_url(main_page, format: :json)
