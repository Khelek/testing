Rails.application.routes.draw do

  scope module: 'web' do
    root "accounts#index"

    resources :accounts
    resources :messages
    resources :emails
  end

end
