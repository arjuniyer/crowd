class OauthController < ApplicationController

def start
  session['oauth']= Koala::Facebook::OAuth.new(APP_ID, SECRET, CALLBACK)
  redirect_to session['oauth'].url_for_oauth_code()
end

def callback
  session[:access_token] = session['oauth'].get_access_token(params[:code])
  redirect_to events_url
end




end