class ApplicationController < ActionController::API
  include Response
  include HttpAuthConcern

  # before_action :authenticate_request
  # attr_reader :current_user


  rescue_from ActiveRecord::RecordNotFound do |exception|
    json_response({ message: exception.message }, :not_found)
  end

  # private
  #   def authenticate_request
  #     @current_user = AuthorizeApiRequest.call(request.headers).result
  #     render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  #   end
end