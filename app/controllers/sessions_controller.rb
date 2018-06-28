class SessionsController < Devise::SessionsController
	skip_before_action :verify_authenticity_token
	respond_to :json

	private

	def respond_with(resource, _opts = {})
		  # This is important, else ember-simple-auth and simple-auth-devise fails.
		  render json: { email: resource.email,token: request.env['warden-jwt_auth.token'],:showContact => false,:showAbout =>true }
	end

	def respond_to_on_destroy
		head :no_content
	end
	def capabilities
		#before_action: authenticate_user!
		render json: { :showContact=> false,:showAbout => false}
	end

end
