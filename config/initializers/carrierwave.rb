CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: 'AKIAIYCDNMAMW4DG2ELQ',
    aws_secret_access_key: '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',
    region: 'ap-northeast-1'
  }

  config.fog_directory = 'muscle-checker'
  config.cache_storage = :fog
end