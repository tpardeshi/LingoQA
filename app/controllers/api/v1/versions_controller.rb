module Api
  module V1
    class VersionsController < ApplicationController
      def index
        @versions = Version.all
        render json: @versions
      end

      def show
        @versions = Version.find(params[:id])
        render json: @versions
      end
    end
  end
end
