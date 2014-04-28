Rails.application.config.middleware.use OmniAuth::Builder do
    provider "myverifiedid" , ENV["OAUTH_ID"], ENV["OAUTH_SECRET"], :scope => "email"

    OmniAuth.config.on_failure = HomeController.action(:myverifiedid_auth_failure)
    
end
