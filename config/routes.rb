Rails.application.routes.draw do
  get 'quiz/new'

  get 'home/index'
  get '/q/:id' , to: 'quiz#show'
  post '/q/:id' , to: 'quiz#submit'
  post 'quiz/new', to: 'quiz#create'


  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
