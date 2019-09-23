require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.time_zone = 'Beijing'

    # 在使用 Ajax 处理的表单中添加真伪令牌
    config.action_view.embed_authenticity_token_in_remote_forms = true

    config.action_mailer.default_url_options = { host: '0.0.0.0::3000' }

    ActionMailer::Base.delivery_method = :smtp
    # gmail
    ActionMailer::Base.smtp_settings = {
        :address              => 'smtp.gmail.com',
        :port                 => 587,
        :domain               => 'gmail.com',
        :user_name            => 'skipmaple@gmail.com',
        :password             => 'wnewepcdphknfjed',
        :authentication       => :login,
        :enable_starttls_auto => true
    }

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
