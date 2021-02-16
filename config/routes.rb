Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks, except: [:delete]
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete
end
