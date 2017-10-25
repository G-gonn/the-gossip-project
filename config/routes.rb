Rails.application.routes.draw do

	root "gossips#home"
	resources :gossips

	get "/new", to: "gossips#new"
	get "/index", to: "gossips#index"
	get "/gossips", to: "gossips#index"
	get "/edit", to: "gossips#edit"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
