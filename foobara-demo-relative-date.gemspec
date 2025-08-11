require_relative "version"

Gem::Specification.new do |spec|
  spec.name = "foobara-demo-relative-date"
  spec.version = FoobaraDemo::RelativeDate::VERSION
  spec.authors = ["Miles Georgi"]
  spec.email = ["azimux@gmail.com"]

  spec.summary = "Setup a new project demoing this concept with a passing test suite"
  spec.homepage = "https://github.com/foobara-demo/relative-date"
  spec.license = "MPL-2.0"
  spec.required_ruby_version = FoobaraDemo::RelativeDate::MINIMUM_RUBY_VERSION

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.files = Dir[
    "lib/**/*",
    "src/**/*",
    "LICENSE*.txt",
    "README.md",
    "CHANGELOG.md"
  ]

  spec.add_dependency "foobara-llm-backed-command", "< 2.0.0"
  spec.add_dependency "foobara-ollama-api", "< 2.0.0"

  spec.require_paths = ["lib"]
  spec.metadata["rubygems_mfa_required"] = "true"
end
