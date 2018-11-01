Rails.application.routes.draw do
	root 'posts#index', as: :home
    get 'index/id' => 'posts#new' , as: :new
  
	
	resources :posts  do
		resources :comments
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
