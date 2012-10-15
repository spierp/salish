CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => ENV["AKIAINILF5RCP4GU5E6A"],       # required
    :aws_secret_access_key  => ENV["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"],       # required
#    :region                 => 'eu-west-1'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = ENV["salish"]                     # required
#  config.fog_public     = false                                   # optional, defaults to true
#  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
#  config.asset_host     = 'https://assets.example.com'            # optional, defaults to nil
end