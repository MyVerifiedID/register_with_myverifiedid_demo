Rails.application.config.middleware.use OmniAuth::Builder do
    provider "myverifiedid" , ENV["OAUTH_ID"], ENV["OAUTH_SECRET"], :scope => "email"
end