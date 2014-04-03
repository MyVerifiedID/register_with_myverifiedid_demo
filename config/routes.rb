RegisterWithMvi::Application.routes.draw do
  devise_for :users

 	root :to => "home#index"

 	match '/auth/:provider/callback' => 'user_registration#new'
 	match 'auth/failure', to: redirect('/')

 	match "user_registration/create" => "user_registration#create", :via => :post

end
