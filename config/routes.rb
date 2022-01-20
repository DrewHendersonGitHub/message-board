Rails.application.routes.draw do
  # mount Rswag::Ui::Engine => '/api-docs'
  # mount Rswag::Api::Engine => '/api-docs'
  resources :boards do
    resources :messages
  end
  # post 'authenticate', to: 'authentication#authenticate'
end