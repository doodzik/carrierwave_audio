# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)

require 'carrierwave_audio'
require 'should_not/rspec'
require 'carrierwave/test/matchers'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|

  config.include CarrierWave::Test::Matchers

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "random"

  #db_cleaner setup
  config.before(:suite) do
    # Get rid of the upload dir
    FileUtils.rm_rf(Dir["#{Rails.root}/public/uploads/[^.]*"]) if Rails.env.test? || Rails.env.cucumber?
  end

end
