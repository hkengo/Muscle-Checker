CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: 'AKIAJEANMZFZEEAFZJLA',
    aws_secret_access_key: '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',
    region: 'ap-northeast-1'
  }
  config.fog_directory = 'muscle-checker'
  config.asset_host = 'https://s3.amazonaws.com/muscle-checker'
end