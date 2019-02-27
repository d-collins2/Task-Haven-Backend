Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :task_members
      resources :sub_tasks
      resources :tasks
      resources :lists
      resources :boards
      resources :team_members
      resources :teams
      resources :users
      resources :activities
      resources :comment

      post '/login', to: 'auth#create'

      get "/current_user", to: "auth#get_user_from_token"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
