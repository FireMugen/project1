Rails.application.routes.draw do
	root :to => 'users#index'              # Replace this with whatever you want your root_path to be.
	 resources :users, :only => [:new, :create, :index, :show, :edit, :update]
	 resources :posts, :only => [:show, :create, :index]
	 resources :comments, :only => [:create]
	                                      # This path is where unauthorized users will be redirected_to.
	get '/login' => 'session#new'         # This will be our sign-in page.
	post '/login' => 'session#create'     # This will be the path to which the sign-in form is posted
	delete '/login' => 'session#destroy'  # This will be the path users use to log-out.
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
