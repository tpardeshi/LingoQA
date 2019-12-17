# frozen_string_literal: true

module Api
  module V1
    # Controller methods to call a service of AWS S3
    class ScreenshotsController < ApplicationController
      def index
        @screenshot = Screenshot.all
        render json: @screenshot
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

      def show
        @screenshot = Screenshot.all.with_attached_image
          render json: @screenshot.map { |s|
            s.as_json.merge({ image: url_for(s.image) })
        }
      end

      private
      def screenshot_params
        params.permit(:name, :locale_id, :version_id, :image)
      end
    end
  end
end
