require "bundler/setup"
Bundler.require(:default)
require 'sinatra'
require 'resque/server'
require 'resque/scheduler'
require 'resque/scheduler/server'
require 'resque-retry'
require 'resque-retry/server'
require 'yaml'

#Resque.redis = Redis.new

# Or, with custom options
 Resque.redis = Redis.new({
   :host => ENV['SHIPPIFY_REDIS_HOST'] || ENV['REDIS_PORT_6379_TCP_ADDR'] || 'localhost',
   :port => ENV['SHIPPIFY_REDIS_PORT'] || ENV['REDIS_PORT_6379_TCP_PORT'] || 6379,
#   :db => 1,
 })
Resque.redis.namespace = ENV['RESQUE_NAMESPACE'] || 'resque'

run Rack::URLMap.new \
  "/" => Resque::Server.new
