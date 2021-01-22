CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id:     ENV['ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['SECRET_ACCESS_KEY'],
    region:                ENV['AWS_REGION']
  }

    case Rails.env
    when 'production'
        config.fog_directory  = ENV['S3_BUCKET']
        config.asset_host = 'https://s3.amazonaws.com/digihai'
    end
end
