ApWebsite::Application.routes.draw do
  root 'pages#index'
  get 'pages/:page_name', to: 'pages#show', as: 'page'
end
