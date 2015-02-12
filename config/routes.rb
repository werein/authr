Authr::Engine.routes.draw do
  devise_for :users, class_name: "Authr::User", module: :devise,
    controllers: { sessions: 'authr/sessions' }
end
