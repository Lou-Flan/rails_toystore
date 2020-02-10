Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "pages#home", as: "root"

  get "/toys", to: "toys#index", as: "toys"
  post "/toys", to: "toys#create"
  get "/toys/new", to: "toys#new", as: "new_toy"
  get "/toys/:id", to: "toys#show", as: "toy"
  put "/toys/:id", to: "toys#update"
  patch "/toys/:id", to: "toys#update"
  delete "/toys/:id", to: "toys#destroy"
  get "/toys/:id/edit", to: "toys#edit", as: "edit_toy"

  get "*path", to: "pages#not_found"
end
