require "authr/engine"

module Authr

  # Define parent controller
  mattr_accessor :parent_controller
  @@parent_controller = "ApplicationController"
end
