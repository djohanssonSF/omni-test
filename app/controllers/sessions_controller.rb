class SessionsController < ApplicationController
  def create
  	# user = User.from_omniauth(env["omniauth.auth"].to_yaml)
  	# session[:user_id] = user.id
  	# redirect_to root_url, :notice => "Signed in!"

  	@user = User.create_from_omniauth(auth)
  	# self.current_user = @user
  	session[:user_id] = user.id
  	redirect_to 'connection/index', :notice => "Signed in!"


   #  auth = request.env["omni.auth"]
   #  user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
  	# session[:user_id] = user.id
  	# redirect_to root_url, :notice => "Signed in!"
  end

  protected

  def auth
    request.env['omniauth.auth']
  end

end