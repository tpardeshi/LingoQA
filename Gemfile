source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 6.0.0'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 3.11'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'mysql2', '>= 0.5.2'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry', '~> 0.12.2'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
