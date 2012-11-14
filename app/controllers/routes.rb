RorApp::Aplication.routes.draw do

	resources :companies
	resources :educations
	resources :experiences
	resources :cvs
	resources :users
	resources :sessions, only: [:new, :create, :destroy]

	root to: 'static_pages#home'

	match '/about', to: 'static_pages#about'
	match '/contact', to: 'static_pages#contact'

	match '/signup', to: 'users#new'
	match '/sign_in', to: 'session#new'
	match '/sign_out', to: 'session#destroy', via => :delete
