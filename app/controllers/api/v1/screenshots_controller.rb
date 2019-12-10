# frozen_string_literal: true

module Api
  module V1
    # Controller methods to call a service of AWS S3
    class ScreenshotsController < ApplicationController
      # before_action :find_by_version_id, :find_by_locale_id
      # attr_accessor :version, :local
      def create
        @image = ImageService.uploader(params)
        @screenshot = Screenshot.new(screenshot_params)
        respond_to_upload()
      end

      private
      def screenshot_params
        # initializing params with default values
        defaults = { name: 'picture', locales_id: '1', versions_id: '2', image: @image }
        params.require(:screenshot).permit(:name, :created_at, :updated_at, :locales_id, :versions_id).reverse_merge(defaults)
      end

      def respond_to_upload
        if @screenshot.valid?
          flash[:success] = 'Successful upload and save'
        else
          render json: { errors: screenshot.errors }, status: 400
        end
      end
=begin
      def find_by_version_id
        @version = Version.find(params[:id])
      end

      def find_by_locale_id
        @locale = Locale.find(params[:id])
      end
=end
    end
  end
end
