# frozen_string_literal: true

# Service class for image upload display to/from S3
module ImageService
  class << self
    Aws.config.update(
      region: 'us-east-1',
      credentials: Aws::Credentials.new(APP_CONFIG[:access_key_id], APP_CONFIG[:secret_access_key])
    )
    def uploader(params)
      s3 = Aws::S3::Resource.new(region: 'us-east-1')
      file = params['picture'].original_filename
      obj = s3.bucket('lingo-images').object(file)
      File.open(file, 'wb') do
        obj.put(body: params['picture'])
      end
    end

    def downloader
      bucket = Aws::S3::Resource.new(region: 'us-east-1').bucket('lingo-images')
      bucket.objects.each do |item|
        puts "URL: #{item.presigned_url(:get)}"
      end
    end
  end
end
