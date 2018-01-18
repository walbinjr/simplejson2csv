require 'aruba/api'

RSpec.configure do |config|
  config.include Aruba::Api
end

Aruba.configure do |config|
  ARUBA_HOME = config.working_directory
end
