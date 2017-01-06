namespace :cron do
  desc 'Setup ec2-user crontab'
  task :upload_crontab do
    on roles(:web) do
      upload! './config/crontab-template', '/tmp/crontab-template'
      execute 'crontab /tmp/crontab-template && rm /tmp/crontab-template'
    end
  end
end
