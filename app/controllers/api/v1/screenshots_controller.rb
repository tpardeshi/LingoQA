# frozen_string_literal: true

module Api
  module V1
    # Controller methods to call a service of AWS S3
    class ScreenshotsController < ApplicationController
      before_action :set_product_version, :set_locale

      def index
        # @screenshots = Screenshot.all
        @screenshots = Screenshot.where(product_version_id: @version, locale_id: @locale)
        # render json: @screenshots, include: :images
        render json: @screenshots.map { |screenshots| screenshots_json(screenshots) }
      end

      def new
        @screenshot = Screenshot.new
      end

      def create
        @screenshot = Screenshot.new(screenshot_params)
        @screenshot.save!
      end

      private
      def screenshot_params
        params.require(:screenshot).permit(:name, :locale_id, :product_version_id, images: [])
      end

      def screenshots_json(screenshots)
        screenshots.as_json.merge(Images: screenshots.images.map { |image| url_for(image) })
      end

      def set_product_version
        @version = ProductVersion.find(params[:product_version_id])
      end

      def set_locale
        @locale = Locale.find(params[:locale_id])
      end
    end
  end
end
