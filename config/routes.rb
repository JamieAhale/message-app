Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check

  root "chatroom#index"

  get 'signup', to: 'user#new'

  post 'signup', to: 'user#create'

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  post 'message', to: 'messages#create'

  mount ActionCable.server, at: '/cable'
end
