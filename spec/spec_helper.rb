require 'factory_bot_rails'
require 'simplecov'

SimpleCov.minimum_coverage 95

SimpleCov.start do
  add_filter 'spec'
  add_filter 'config/routes.rb'
  add_filter 'app/admin'
  add_filter 'initializers'
  add_filter 'app/helpers/custom_healthchecks.rb'
end

RSpec.configure do |config|

  config.include FactoryBot::Syntax::Methods

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object. This is generally recommended, and will default to
    # `true` in RSpec 4.
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

end
