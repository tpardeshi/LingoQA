# frozen_string_literal: true

module Api
  module V1
    # Controller methods for product_version model
    class ProductVersionsController < ApplicationController
      before_action :get_products_id
      def index
        @versions = @product.product_versions
        render json: @versions
      end
      private
      def get_products_id
        @product = Product.find(params[:product_id])
      end
    end
  end
end
