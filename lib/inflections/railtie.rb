module Inflections
  class Railtie < Rails::Railtie
    initializer 'inflections.require_inflections' do
      begin
        require "inflections/#{Rails.configuration.i18n.default_locale}"
      rescue LoadError => e
        if Rails.configuration.i18n.default_locale.nil?
          warn "Inflections: no default locale set. Defaulting to English (en)."
        else
          warn "Inflections: no support for #{Rails.configuration.i18n.default_locale}. Defaulting to English (en)."
          require 'inflections/en'
        end
      end
    end
  end
end
