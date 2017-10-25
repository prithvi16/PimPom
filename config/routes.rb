Rails.application.routes.draw do
  
  
  
  get 'quiz/new'

 
  get '/q/:id' , to: 'quiz#show'
  post '/q/:id' , to: 'quiz#submit'
  get '/r/:id', to: 'quiz#result'
  post 'quiz/new', to: 'quiz#create'
  root  'quiz#new'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
