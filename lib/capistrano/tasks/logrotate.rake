namespace :logrotate do
  desc 'Setup logrotate config file'
  task :upload_logrotate_file do
    on roles(:web) do
      upload! './config/logrotate.conf', '/tmp/logrotate.conf'
      execute :sudo, 'mv', '/tmp/logrotate.conf', '/etc'
    end
  end
end
