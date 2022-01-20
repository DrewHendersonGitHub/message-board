Rails.application.routes.draw do
  resources :boards do
    resources :messages
  end
  # post 'authenticate', to: 'authentication#authenticate'
end