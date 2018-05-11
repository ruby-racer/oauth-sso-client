Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "application#home"

  get '/auth/:provider/callback' => 'application#authentication_callback'
end
