Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '1119133578224018', 'c861bff83cb4195d055cfe4709505ede'
end