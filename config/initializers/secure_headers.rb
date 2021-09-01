# require 'secure_headers'

# SecureHeaders::Configuration.default do |config|
#     config.csp = {
#       default_src: %w('none'),
#       script_src: %w('self' 'unsafe-inline'),
#       style_src: %w('self' 'unsafe-inline')

#     }
#   end
  
# SecureHeaders::Configuration.named_append(:charts) do |request|
#     {style_src: %w('unsafe-inline')}
#   end