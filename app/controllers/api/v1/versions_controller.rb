# frozen_string_literal: true

module Api
  module V1
    # Controller methods to call a service of AWS S3
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
