module Inflections
  class Railtie < Rails::Railtie
    begin
      # hard coded locale because couldn't find correct way to access config.i18n.default_locale
      require "inflections/en-GB"
    rescue LoadError => e
      warn "Inflections currently does not support #{config.i18n.default_locale}. Defaulting to English (en)."
      require 'inflections/en'
    end
  end
end
