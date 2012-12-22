RorApp::Aplication.routes.draw do

	resources :companies
	resources :educations
	resources :experiences
	resources :cvs
	resources :users
	
	resources :sessions, only: [:new, :create, :destroy]

	root to: 'static_pages#home'
	match '/current_user', to: '/id/profile'
	match '/users/:id/names'
	match '/about', to: 'static_pages#about'
	match '/contact', to: 'static_pages#contact'

	match '/signup', to: 'users#new'
	match '/sign_in', to: 'sessions#new'
	match '/sign_out', to: 'sessions#destroy', :via => :delete



