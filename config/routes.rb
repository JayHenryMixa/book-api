Rails.application.routes.draw do

  get '/books/:id' => 'books#show'
 

  namespace :api do 
    namespace :v1 do 
      get '/books' => 'books#index'
      post '/books' => 'books#create'

      get '/books/:id' => 'books#show'

      patch '/books/:id' => 'books#update'

      delete '/books/:id' => 'books#destroy'
    end 
  end 
end
