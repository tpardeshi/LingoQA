# frozen_string_literal: true

module Api
  module V1
    # Controller methods to call a service of AWS S3
    class ProductsController < ApplicationController
      def index
        @products = Product.all
        render json: @products
      end

      def show
        @product = Product.find(params[:id])
        render json: @product
      end

      def update
        @product = Product.find(params[:id]);
        @product.update(check_params)
        if @product.valid?
          render json: @product
        else
          render json: { errors: @product.errors.full_messages }
        end
      end

      def callupload
        ImageService.uploader(params)
      end

      def calldownload
        ImageService.downloader
      end

      private
      def check_params
        params.permit(:id)
      end
    end
  end
end
