module Inflections
  class Railtie < Rails::Railtie
    begin
      config.to_prepare do
        require "inflections/#{Rails.configuration.i18n.default_locale}" 
      end
    rescue LoadError => e
      config.to_prepare do
        warn "Inflections currently does not support #{Rails.configuration.i18n.default_locale}. Defaulting to English (en)."
        require 'inflections/en'
      end
    end
  end
end
