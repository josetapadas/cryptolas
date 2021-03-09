Rails.application.routes.draw do
  get '/', to: 'static#home'

  resources :portfolios do
    resources :wallets do
      resources :positions
    end
  end
end
