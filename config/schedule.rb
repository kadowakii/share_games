# Learn more: http://github.com/javan/whenever
set :output, 'log/crontab.log'
ENV['RAILS_ENV'] ||= 'development'
set :environment, ENV['RAILS_ENV']
every 30.minutes do
  rake "youtube:trending"
end



