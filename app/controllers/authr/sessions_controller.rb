module Authr
  class SessionsController < Devise::SessionsController
    def create
      respond_to do |format|
        format.html { super }
        format.json do
          if warden.authenticate(auth_options)
            self.resource = warden.authenticate!(auth_options)
            sign_in(resource_name, resource)
            data = {
              token: self.resource.authentication_token,
              email: self.resource.email
            }
            render json: data, status: 201
          else
            render json: { error: :invalid }, status: 401
          end
        end
      end
    end
  end
end
