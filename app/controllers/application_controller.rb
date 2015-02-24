#include ActionController::HttpAuthentication::Token::ControllerMethods
#include ActionController::MimeResponds
#
#class ApplicationController < ActionController::API
#
#    private
#
#    def restrict_access
#        unless restrict_access_by_params || restrict_access_by_header
#            render json: {message: 'Invalid API Token'}, status: 401
#            return
#        end
#
##        @current_user = @api_key.user if @api_key
#    end
#
#    def restrict_access_by_header
#        return true if @api_key
#
#        authenticate_with_http_token do |token|
##            @api_key = Apikey.find_by_token(token)
#        end
#    end
#
#    def restrict_access_by_params
#        return true if @api_key
#
##        @api_key = Apikey.find_by_token(params[:token])
#    end
#
#end

class ApplicationController < ActionController::Base
    before_filter :get_headers
    def get_headers
        headers['Access-Control-Allow-Origin']='*';
        headers['Access-Control-Allow-Methods']='POST, PUT, DELETE, GET, OPTIONS';
        headers['Access-Control-Request-Method']='*';
        headers['Access-Control-Allow-Headers']='Origin, X-Requested-With, Content-Type, Accept, Authorizarion';
    end
end
