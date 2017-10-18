Rails.application.routes.draw do
  
  
  
  get 'quiz/new'

 
  get '/q/:id' , to: 'quiz#show'
  post '/q/:id' , to: 'quiz#submit'
  post 'quiz/new', to: 'quiz#create'
  root  'home#index'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
