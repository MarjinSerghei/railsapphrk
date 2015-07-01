Rails.application.routes.draw do
	mount Attachinary::Engine => '/attachinary'
	devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }  
	resources :posts do  
  resources :comments, only: :create
  member do
    get "upvote"
    get "downvote"
  end
end    	
	authenticated :user do
	root to: "posts#index", as: "authenticated_user"
	end
	root to: "pages#landing"
	get "features" => "pages#features"
	get "landing" => "pages#landing"
	resources :users, only: [:show]
end
