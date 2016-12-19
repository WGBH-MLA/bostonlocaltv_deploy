namespace :logrotate do
  desc 'Setup logrotate config file'
  task :upload_logrotate_file do
    on roles(:web) do
      upload! './logrotate.conf', '/etc/logrotate.conf'
    end
  end
end
