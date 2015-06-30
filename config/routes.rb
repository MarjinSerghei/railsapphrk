Rails.application.routes.draw do
	mount Attachinary::Engine => '/attachinary'
	devise_for :users
	resources  :posts 
	authenticated :user do
	root to: "posts#index", as: "authenticated_user"
	end
	root to: "pages#landing"
	get "features" => "pages#features"
	get "landing" => "pages#landing"
end
