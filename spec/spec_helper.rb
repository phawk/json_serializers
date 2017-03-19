require "bundler/setup"
require "json_serializers"
require "active_model"

$: << File.expand_path(__dir__)
Dir["./spec/fixtures/**/*.rb"].sort.uniq.each { |rb| require rb }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
