# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

map '/diagnostic' do
  run REA::HealthCheck::DiagnosticApp
end

run Rails.application
