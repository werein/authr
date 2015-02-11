require 'devise'
require 'responders'
require 'active_model_serializers'
require 'simple_token_authentication'

module Authr
  class Engine < ::Rails::Engine
    isolate_namespace Authr
  end
end
