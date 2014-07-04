namespace :admin do
  task :users => :environment do
    User.create!(:email => 'admin@example.com', :password => 'test1234', :password_confirmation => 'test1234')
  end
end