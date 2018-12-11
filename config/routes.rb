Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routipng.html
  namespace :api do
    get "/tasks" => "tasks#index"
    post "/tasks" => "tasks#create"
    get "tasks/:id" => "tasks#show"
    patch "tasks/sort" => "tasks#sort"
    patch "tasks/:id" => "tasks#update"
    delete "tasks/:id" => "tasks#destroy"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end
end
