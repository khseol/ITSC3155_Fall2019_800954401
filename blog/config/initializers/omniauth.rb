OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '528712181092-rsilqpjboqaj398kjkk957c8guji45rv.apps.googleusercontent.com', 'zfB_MLkU-Y_bSekUhjAPPdjw', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
