#!/usr/bin/env ruby

ENV["BUNDLE_GEMFILE"] ||= File.expand_path("./Gemfile", __dir__)
require "bundler/setup"

require_relative "../boot"

llm_model = "qwen3-coder:30b"
phrase = "The Thursday after next"

result = DetermineDateRelativeToToday.run!(llm_model:, phrase:)

puts result.thursday? ? "It is a Thursday" : "It is not a Thursday"
puts "#{result.year}-#{result.month}-#{result.day}"
