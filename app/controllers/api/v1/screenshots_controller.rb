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
        # binding.pry
        @screenshot = Screenshot.new(screenshot_params)
        @screenshot.save
        # @screenshot.image.attach(params[:image])
        if @screenshot.save
          flash[:notice] = 'Your record was saved'
        else
          flash[:alert] = 'Your record was not saved'
          render :action => 'new'
        end
      end

      def show
        @screenshot = Screenshot.all
        # render json: @screenshot.map { |s| s.as_json.merge({ image: url_for(s.images) })
        # }
      end

      def update
        @screenshot = Screenshot.find(params[:id])

        if @screenshot.update(screenshot_params)
          redirect_to @screenshot
        else
          render 'edit'
        end
      end

      def edit
        @screenshot = Screenshot.find(params[:id])
      end


      private
      def screenshot_params
        params.require(:screenshot).permit(:name, :locale_id, :version_id, images: [])
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
