json.extract! member, :id, :name, :email, :phone, :state, :city, :coordinator, :knit, :mettings, :created_at, :updated_at
json.url member_url(member, format: :json)
