Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'bloggers/:id', to: 'bloggers#show'

  get 'posts/new', to: 'posts#new' 
  get 'posts/:id', to: 'posts#show', as: 'post'
  post 'posts', to: 'posts#create'
  
  get 'destinations/:id', to: 'destinations#show', as: 'destination'
end
