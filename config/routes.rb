Rails.application.routes.draw do
	mount Attachinary::Engine => '/attachinary'
  devise_for :users
  resources  :posts 
  root to: "pages#landing" 
  get "features" => "pages#features"
  get "landing" => "pages#landing" 

end
