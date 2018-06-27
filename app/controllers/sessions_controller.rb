class SessionsController < Devise::SessionsController

	respond_to :json

	private

	def respond_with(resource, _opts = {})
	  	# This is important, else ember-simple-auth and simple-auth-devise fails.
	  	render json: { email: resource.email,token: request.env['warden-jwt_auth.token'] }
	end

	def respond_to_on_destroy
		head :no_content
	end

end
