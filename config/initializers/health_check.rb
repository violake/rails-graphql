health_check = HealthCheck::Diagnostic.instance

health_check.app_version = ENV['APP_VERSION'] || 'development'

health_check.logger = Rails.logger

health_check.check_health!

health_check.add_check(:db_s_connect, severity: :error, thread_safe: true) do
  ApplicationRecord.connection_pool.with_connection(&:active?)
end
