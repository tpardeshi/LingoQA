# frozen_string_literal: true

module Api
  module V1
    # Controller methods to call a service of AWS S3
    class ScreenshotsController < ApplicationController
      def index
        @screenshot = Screenshot.all
        render json: @screenshot, include: :images
      end

      def new
        @screenshot = Screenshot.new
      end

      def create
        @screenshot = Screenshot.new(screenshot_params)
        @screenshot.save
        if @screenshot.save
          flash[:notice] = 'Your record was saved'
        else
          flash[:alert] = 'Your record was not saved'
          render :action => 'new'
        end
      end

      private
      def screenshot_params
        params.permit(:name, :locale_id, :version_id, images: [])
      end
    end
  end
end
