Rails.application.routes.draw do

  devise_for :users
  resources :books

  resources :users, only: [:show, :edit, :update, :index]
	get "/about" => "home#about"
	root "home#top"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
