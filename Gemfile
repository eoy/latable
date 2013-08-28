source 'https://rubygems.org'
ruby '1.9.3'
gem 'rails', '4.0.0'
gem 'sqlite3'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'anjlab-bootstrap-rails', :require => 'bootstrap-rails',
                              :github => 'anjlab/bootstrap-rails'
gem 'cancan'
gem 'devise'
gem 'figaro'
gem 'rolify'
gem 'sendgrid'
gem 'simple_form', '>= 3.0.0.rc'

gem 'prawn' # PDF
gem 'ransack' # Search
gem 'font-awesome-rails' # Fonts
gem 'fullcalendar-rails' # Calendar
gem 'jquery-ui-rails'
gem 'oj'
gem 'bootstrap-datetimepicker-rails'
gem 'dalli'
gem 'activerecord-postgres-hstore'
gem 'backbone-on-rails'
gem 'friendly_id', '5.0.0.beta4'
gem 'paper_trail', :git => "git@github.com:airblade/paper_trail.git"
gem 'stamp'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'hub', :require=>nil
  gem 'quiet_assets'
  gem 'pg'
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'puma'
  gem 'rspec-rails'
end
group :production do
  gem 'unicorn'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
end
