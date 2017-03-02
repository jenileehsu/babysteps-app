Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'users#index'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/kids/new' => 'kids#new'
  post '/kids' => 'kids#create'
  get '/kids/:id' => 'kids#show'

  get '/milestones/new' => 'milestones#new'
  post '/milestones' => 'milestones#create'
  

end