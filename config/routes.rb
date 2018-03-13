Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#READ
  root to: 'tasks#index'
  get "/tasks", to: "tasks#index"


  get "/tasks/new", to: "tasks#new", as: "new"
  get "/tasks/:id", to: "tasks#details", as: "details"

  post "/tasks", to: "tasks#create"
  #(post action to receive request)
  get "tasks/:id/edit", to: "tasks#edit", as: "edit"
  patch "tasks/:id", to: "tasks#update"


end
