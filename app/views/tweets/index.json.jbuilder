json.array!(@tweets) do |tweet|
  json.extract! tweet, :body, :user_id, :favorites_count
  json.url tweet_url(tweet, format: :json)
end
