# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  match ':controller(/:action(/:id))', :via => [:get, :post]
  namespace 'api' do
    namespace 'v1' do
      get 'screenshots/new', to: 'screenshots#new'
      get 'screenshots/show', to: 'screenshots#show'
      resources :screenshots
    end
  end
end
