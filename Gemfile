# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem "sinatra", "~> 2.1"

group :test do
  gem "capybara", "~> 3.33"
  gem "rspec", "~> 3.9"
  gem 'rubocop', '0.79.0'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end

gem "pg", "~> 1.2"
