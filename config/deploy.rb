require "bundler/capistrano"
require "rvm/capistrano"
require 'capistrano-unicorn'
load "deploy/assets"

set :rvm_ruby_string, "ruby-2.0.0-p0@Zeratul"

set :application, "Zeratul"
set :deploy_to, "/home/zeratul"

set :scm, :git
set :repository, "git@github.com:Nerazim/Zeratul.git"
set :branch, "master"

set :user, "zeratul"
set :use_sudo, false

set :location, "98.118.175.236"
set :port, 36663
role :web, location
role :app, location
role :db,  location, :primary => true # This is where Rails migrations will run

ssh_options[:forward_agent] = true

namespace :configs do
  task :symlink do
    run "cp -R ~/shared/config/* #{release_path}/config/"
    run "ln -nfs #{shared_path}/assets #{release_path}/public/assets"
  end
end

before "deploy:setup", "rvm:install_ruby"

after "deploy:update_code", "deploy:migrate"

before "deploy:finalize_update", "configs:symlink"

after "deploy:restart", "deploy:cleanup"
after 'deploy:restart', 'unicorn:reload' # app IS NOT preloaded
after 'deploy:restart', 'unicorn:restart'  # app preloaded
