OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '374087811995-cajd2mefpte5lni23527ei988nf21get.apps.googleusercontent.com', 'bIbnqC6-O5pOovuyog9ZehRu', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
