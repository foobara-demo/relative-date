require "vcr"

VCR.configure do |config|
  # This is not actually sensitive data but doing this anyway to make things normalized across environments
  config.filter_sensitive_data("<SCRUBBED_OLLAMA_API_URL>") { ENV.fetch("OLLAMA_API_URL", nil) }
  config.cassette_library_dir = "spec/vcr_cassettes"
  config.hook_into :webmock
  config.configure_rspec_metadata!
end
