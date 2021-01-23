if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AWS_ACCESS_KEY_ID'],
      :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
      :region                => ENV['AWS_REGION']
    }
    config.fog_directory     =  ENV['S3_BUCKET']
    # キャッシュの保存期間
    config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
  end
  # 日本語ファイル名の設定
  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/ 
end
