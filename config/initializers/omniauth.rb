Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '328044357228797', 'd3f7a79f1dc5c52483fc9db1a984e519', :scope => 'user_actions.music,friends_actions.music,user_actions:music,user_events', :display => 'popup', :client_options => {:ssl => {:ca_file => Rails.root.join('lib/assets/cacert.pem').to_s } }
end
