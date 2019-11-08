# frozen_string_literal: true

module Api
  module V1
    # Controller methods to call a service of AWS S3
    class ImageController < ApplicationController
      def callupload
        ImageService.uploader(params)
      end

      def calldownload
        ImageService.downloader
      end
    end
  end
end
