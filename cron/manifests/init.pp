class cron {
  include cron::anacrontab
  include cron::config
  include cron::install
  include cron::service
}
