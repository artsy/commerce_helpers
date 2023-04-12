# frozen_string_literal: true

require 'json'
require 'commerce_helpers'

namespace :commerce_helpers do
  desc 'Generate data in a JSON file'
  task :generate_data do
    File.open('package/data/data.json', 'w') do |f|
      data = {
        COUNTRIES_REQUIRING_VAT: CommerceHelpers::COUNTRIES_REQUIRING_VAT,
        COUNTRIES_IN_CONTINENTAL_EUROPE: CommerceHelpers::COUNTRIES_IN_CONTINENTAL_EUROPE,
        COUNTRIES_IN_EUROPEAN_UNION: CommerceHelpers::COUNTRIES_IN_EUROPEAN_UNION,
        COUNTRIES_WITH_ARTSY_SHIPPING: CommerceHelpers::COUNTRIES_WITH_ARTSY_SHIPPING,
        CURRENCIES_SUPPORTED_IN_COMMERCE: CommerceHelpers::CURRENCIES_SUPPORTED_IN_COMMERCE,
        ARTSY_SHIPPING_PRICE_LIMIT: CommerceHelpers::ARTSY_SHIPPING_PRICE_LIMIT
      }

      f.write(JSON.pretty_generate(data))
    end
  end
end
