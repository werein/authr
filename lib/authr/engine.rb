require 'devise'
require 'responders'
require 'active_model_serializers'
require 'simple_token_authentication'

module Authr
  class Engine < ::Rails::Engine
    isolate_namespace Authr

    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end
  end
end
