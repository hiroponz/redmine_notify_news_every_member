require 'redmine'
begin
  require 'config/initializers/session_store.rb'
rescue LoadError
end
require 'notify_news_mailer_model_patch'

Redmine::Plugin.register :redmine_notify_news_every_member do
  name 'Redmine Notify News Every Member plugin'
  author 'hiroponz'
  description "Notify news to every member in a project irrespective of the member's account settings."
  version '0.0.2'
  requires_redmine :version_or_higher => '0.9.0'
end
