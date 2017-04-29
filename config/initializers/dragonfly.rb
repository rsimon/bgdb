require 'dragonfly'

# Configure
Dragonfly.app.configure do
  # plugin :imagemagick

  secret "e0d2edf1ba98f4adca9dab2608dc5af4fb02d6c044c3ec3ffa80b1f3faed3753"

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end
