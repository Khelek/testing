Rails.application.routes.draw do

  scope module: 'web' do
    root "accounts#index"
    resources :accounts
  end

end
