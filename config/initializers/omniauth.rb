Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '328044357228797', 'd3f7a79f1dc5c52483fc9db1a984e519', :scope => 'user_likes,friends_likes', :display => 'popup', :client_options => {:ssl => {:ca_file => Rails.root.join('lib/assets/cacert.pem').to_s } }
end