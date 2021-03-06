Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'users#index'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/users/:id' => 'users#show'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # get '/kids/new' => 'kids#new'
  # post '/kids' => 'kids#create'
  # get '/kids/:id' => 'kids#show'
  # get '/kids/:id/edit' => 'kids#edit'
  # patch '/kids/:id' => 'kids#update'
  # delete 'kids/:id' => 'kids#destroy'

  # get '/kids/:kid_id/milestones/new' => 'milestones#new'
  # post '/kids/:kid_id/milestones' => 'milestones#create'
  # get '/kids/:kid_id/milestones/:id' => 'milestones#show'
  # get '/kids/:kid_id/milestones/:id/edit' => 'milestones#edit'
  # patch 'kids/:kid_id/milestones/:id' => 'milestones#update'
  # delete '/kids/:kid_id/milestones/:id' => 'milestones#destroy'

  # get '/kids/:kid_id/milestones/:milestone_id/images' => 'images#index'
  # get '/kids/:kid_id/milestones/:milestone_id/images/new' => 'images#new'
  # get '/kids/:kid_id/milestones/:milestone_id/images/:id' => 'images#show'
  # post '/kids/:kid_id/milestones/:milestone_id/images' => 'images#create'
  # delete '/kids/:kid_id/milestones/:milestone_id/images/:id' => 'images#destroy'

  # get '/kids/:kid_id/milestones/:milestone_id/comments/new' => 'comments#new'
  # post '/kids/:kid_id/milestones/:milestone_id/comments' => 'comments#create'

  resources :kids do
    resources :milestones do
      resources :images
      resources :comments
    end
  end

end