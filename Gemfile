# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

if ENV["OLD_CUPRITE"] == "1"
  gem "cuprite", "~> 0.6.0"
else
  gem "cuprite", github: "machinio/cuprite"
  gem "ferrum", github: "route/ferrum"
end
