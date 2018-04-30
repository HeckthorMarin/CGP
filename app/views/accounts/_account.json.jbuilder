json.extract! account, :id, :title, :begBalance, :curBalance, :note, :created_at, :updated_at
json.url account_url(account, format: :json)
