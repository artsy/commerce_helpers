# frozen_string_literal: true

require 'json'
require 'address_helper'

namespace :address_helper do
  desc 'Generate data in a JSON file'
  task :generate_data do
    File.open('package/data/data.json', 'w') do |f|
      data = {
        COUNTRIES_WITH_VAT: AddressHelper::COUNTRIES_WITH_VAT
      }

      f.write(JSON.pretty_generate(data))
    end
  end
end
