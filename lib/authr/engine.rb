require 'devise'
require 'responders'
require 'active_model_serializers'

module Authr
  class Engine < ::Rails::Engine
    isolate_namespace Authr
  end
end
