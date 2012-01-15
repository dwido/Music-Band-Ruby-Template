namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!(:name => "dwidob",
                         :email => "dwidob@gmail.com",
                         :password => "rachidi1",
                         :password_confirmation => "rachidi1")
    admin.toggle!(:admin)
  end
end