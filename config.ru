$:.unshift File.expand_path("../lib", __FILE__)
require 'fakes3-rack'

run FakeS3Rack::App.new(FakeS3::FileStore.new(ENV['FAKE_S3_ROOT']), ENV['FAKE_S3_HOSTNAME'])
