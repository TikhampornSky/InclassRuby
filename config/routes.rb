Rails.application.routes.draw do
  resources :scores
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'students/:id/edit_score', to: 'students#edit_score'
  get 'students/:id/edit_score', to: 'scores#new'
  get 'main/login'
  get 'main/create'
  get 'main/destroy'
end
