Rails.application.routes.draw do
  # mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql' if Rails.env.development?
  post '/graphql', to: 'graphql#execute'

  get '/diagnostic/status/heartbeat', to: 'health_check#index'
end
