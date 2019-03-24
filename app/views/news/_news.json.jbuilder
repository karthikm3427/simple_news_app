json.extract! news, :id, :name, :content, :created_at, :updated_at
json.url news_url(news, format: :json)
