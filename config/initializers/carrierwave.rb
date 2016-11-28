CarrierWave.configure do |config|
  #config.storage = :file

  # Use S3 if you want
  config.storage = :fog
  config.fog_credentials = {
    provider:               'AWS',
    #region:                 'us-east-1',
    aws_access_key_id:      ENV["AWS_ACCESS_KEY"],
    aws_secret_access_key:  ENV["AWS_SECRET_KEY"],
    host:                  's3.amazonaws.com',             # optional, defaults to nil
    endpoint:              'https://s3.amazonaws.com'
  }
  config.fog_directory  = 'alderney.cms.images'
  config.fog_public     = true
  config.fog_attributes = { 'Cache-Control' => 'max-age=315576000' }

  config.enable_processing = !Rails.env.test?
end
