# frozen_string_literal: true

module Api
  module V1
    # Controller methods for version model
    class VersionsController < ApplicationController
      before_action :get_products_id
      def index
        @versions = @product.versions
        render json: @versions
      end

      private
      def get_products_id
        @product = Product.find(params[:product_id])
      end
    end
  end
end