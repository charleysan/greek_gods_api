Rails.application.routes.draw do
 get '/gods' => 'gods#index'
 get '/gods/:id' => 'gods#show'
 post '/gods' => 'gods#create'
 put '/products/:id' => 'products#update'
 delete '/products/:id' => 'products#smite'
end
