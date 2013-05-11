Adjourn::Engine.routes.draw do
  resources :reminders


  resources :events

  root to: 'events#index'

end
