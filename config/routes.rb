Rails.application.routes.draw do
  
  devise_for :users
  get '/' => "welcome#index", as: "home"
  #get '/user:id' => "user#show",
  # get '/edit' => "users#edit"
  # get '/posts/:id/edit' => "posts#edit"
  # get '/post/:post_id' => "posts#show"
  # get '/posts/:id'  => 'comments#new', as: 'new_post_comment'
  resources :posts do
  	resources :comments
  end
  resources :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
end
