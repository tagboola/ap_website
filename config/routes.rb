ApWebsite::Application.routes.draw do
  resources :inquiries

  root 'pages#index'
  get 'pages/:page_name', to: 'pages#show', as: 'page'
end
