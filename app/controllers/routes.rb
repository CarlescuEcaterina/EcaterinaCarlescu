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
	match '/sign_in', to: 'sessions#new'
	match '/sign_out', to: 'sessions#destroy', via => :delete
<<<<<<< HEAD
end
=======
>>>>>>> 359e36de9458b69d001a13146aade3a3339725c9
