Rails.application.routes.draw do

 get '/gods' => 'gods#index'
 get '/gods/:id' => 'gods#show'
 post '/gods' => 'gods#create'
 patch '/gods/:id' => 'gods#update'
 delete '/gods/:id' => 'gods#smite'

end
