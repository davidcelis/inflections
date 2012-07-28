module Inflections
  class Railtie < Rails::Railtie
    begin
      require "inflections/#{config.i18n.default_locale}"
    rescue LoadError => e
      warn "Inflections currently does not support your default_locale. Defaulting to English (en)."
      require 'inflections/en'
    end
  end
end
