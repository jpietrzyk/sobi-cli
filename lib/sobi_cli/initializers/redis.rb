redis_connection = Redis.new(
  host: ENV['REDIS_HOST'],
  port: ENV['REDIS_PORT'],
  password: ENV['REDIS_PASSWORD']
)
$redis = Redis::Namespace.new("sobi-#{ENV['SRV_ENV'] || 'development'}",
  redis: redis_connection
)
