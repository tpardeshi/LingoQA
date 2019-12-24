# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  match ':controller(/:action(/:id))', :via => [:get, :post]
  namespace 'api' do
    namespace 'v1' do
      post 'screenshots/create', to: 'screenshots#create'
      resources :screenshots
    end
  end
end
