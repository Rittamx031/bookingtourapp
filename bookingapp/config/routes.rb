Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    resources :tours
    resources :bills
    resources :users
    resources :sessions
    root 'bills#index'
  end
end
