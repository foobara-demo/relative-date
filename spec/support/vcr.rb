require "vcr"

VCR.configure do |config|
  # This is not actually sensitive data but doing this anyway
  config.filter_sensitive_data("<SCRUBBED_OLLAMA_API_KEY>") { ENV.fetch("OLLAMA_API_KEY", nil) }
  config.cassette_library_dir = "spec/vcr_cassettes"
  config.hook_into :webmock
  config.configure_rspec_metadata!
end
