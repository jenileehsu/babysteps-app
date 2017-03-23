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
  delete 'kids/:id' => 'kids#destroy'

  get '/kids/:kid_id/milestones/new' => 'milestones#new'
  post '/kids/:kid_id/milestones' => 'milestones#create'
  get '/kids/:kid_id/milestones/:id' => 'milestones#show'
  get '/kids/:kid_id/milestones/:id/edit' => 'milestones#edit'
  patch 'kids/:kid_id/milestones/:id' => 'milestones#update'
  delete '/kids/:kid_id/milestones/:id' => 'milestones#destroy'

  get '/kids/:kid_id/milestones/:id/images/new' => 'images#new'
  post '/kids/:kid_id/milestones/:id' => 'images#create'
  get '/kids/:kid_id/milestones/:id/images' => 'images#show'

end