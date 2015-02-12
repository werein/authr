Authr::Engine.routes.draw do
  devise_for :users, class_name: "Authr::User", module: :devise
end
