# frozen_string_literal: true

require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Publify
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.action_view.sanitized_allowed_tags = ["a", "abbr", "acronym", "address", "b", "big", "blockquote", "br", "cite", "code", "dd", "del", "dfn", "div", "dl", "dt", "em", "h1", "h2", "h3", "h4", "h5", "h6", "hr", "i", "img", "ins", "kbd", "li", "mark", "ol", "p", "pre", "samp", "small", "span", "strong", "sub", "sup", "time", "tt", "ul", "var", "table", "tr"]
    config.action_view.sanitized_allowed_attributes = ["abbr","alt","cite","class","datetime","height","href","lang","name","src","title","width","xml:lang"]
    # 追加で使いたいタグをここで定義する
    config.action_view.sanitized_allowed_tags += ['p', "blockcode", "div", "dl", "dt", "embed", "fieldset", "form", "hr", "iframe", "input", "ins", "kbd", "key", "label", "legend", "noscript", "object", "param", "q", "rb", "rp", "rt", "ruby", "script", "table", "tbody", "td", "th", "tr", "u"]
    config.action_view.sanitized_allowed_attributes += ["id"]
  end

  # Load included libraries.
  require "publify_sidebar"
  require "publify_textfilters"
  require "publify_plugins/gravatar"

  Theme.register_themes Rails.root.join("themes")
end
