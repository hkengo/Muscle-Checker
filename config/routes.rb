Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/show'
  resources :training_records
  get 'training_records/download/:id', to: 'training_records#download'

  devise_for :users #, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
