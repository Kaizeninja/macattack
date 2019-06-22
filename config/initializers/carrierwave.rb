# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["AKIAYPCG2KA7WELI2MGQ"],        # required
    aws_secret_access_key: ENV["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"],        # required
    }
  config.fog_directory  = ENV["kaizeninja"]              # required
end
