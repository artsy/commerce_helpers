# frozen_string_literal: true

require 'json'
require 'address_helper'

namespace :address_helper do
  desc 'Generate data in a JSON file'
  task :generate_data do
    File.open('package/data/data.json', 'w') do |f|
      data = {
        COUNTRIES_REQUIRING_VAT: AddressHelper::COUNTRIES_REQUIRING_VAT,
        COUNTRIES_IN_CONTINENTAL_EUROPE: AddressHelper::COUNTRIES_IN_CONTINENTAL_EUROPE
      }

      f.write(JSON.pretty_generate(data))
    end
  end
end
