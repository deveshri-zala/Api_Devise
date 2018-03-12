class ApplicationController < ActionController::API
	acts_as_token_authentication_handler_for User, fallback: :none
	before_action :set_current_user

	def set_current_user
	  User.current_user = current_user
	end
end
