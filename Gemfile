source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "4.0.1"

gem "rails", "~> 8.1.2"

gem "puma", ">= 5.0"
gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
# gem "csv"
gem "cgi"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "tabulo"
  gem "web-console"
end

group :development, :test do
  gem "sqlite3", "~> 1.4"
  # note: keep other gems that were already in this group (e.g. "debug")
end

group :production do
  gem 'pg'
end