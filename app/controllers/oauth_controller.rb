class OauthController < ApplicationController

  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    session[:fb_uid] = user.uid
    session[:access_token] = auth['credentials']['token']
    redirect_to root_url, :notice => "Signed in!"
    
    
    #raise request.env["omniauth.auth"].to_yaml
  end


  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end



end
