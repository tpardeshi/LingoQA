# frozen_string_literal: true

module Api
  module V1
    # Controller methods to call a service of AWS S3
    class ProductsController < ApplicationController
      def index
        @products = Product.all
        render json: @products
      end
    end
  end
end
