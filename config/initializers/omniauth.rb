Rails.application.config.middleware.use OmniAuth::Builder do
    provider :github, '12d05ceb14bd7de0ab9a', '9ffefd0965bbec42d9344355dfa7ff397748bac9'
  end