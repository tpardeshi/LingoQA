# frozen_string_literal: true

module Api
  module V1
    # Controller methods for locales model
    class LocalesController < ApplicationController
      before_action :get_products_id
      def index
        @locales = @product.locales
        render json: @locales
      end

      private
      def get_products_id
        @product = Product.find(params[:product_id])
      end
    end
  end
end