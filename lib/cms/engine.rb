module Cms
  class Engine < ::Rails::Engine
    isolate_namespace Cms

    config.autoload_paths << File.expand_path("../../../app/models/cms/content_attributes", __FILE__)

    mattr_accessor :base_nodes

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end
  end
end
