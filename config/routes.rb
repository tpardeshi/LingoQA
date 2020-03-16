# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      resources :products
      resources :locales
      resources :product_versions

      resources :products do
        resources :product_versions
      end

      resources :product_versions, :locales do
        resources :screenshots
      end

      # resources :locales do
      #   resources :screenshots
      # end
    end
  end
end
