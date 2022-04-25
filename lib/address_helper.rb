# frozen_string_literal: true

require 'address_helper/version'

module AddressHelper
  COUNTRIES_REQUIRING_VAT = %w[AE AT BE BG CH CZ DE DK EE ES FI FR GB GR HU IE IT LT LU LV MT MX NL NO PL PT RO SE SI
                               SK].freeze
  COUNTRIES_IN_CONTINENTAL_EUROPE = %w[AD AM AT AZ BA BE BG BY CH CY CZ DE DK EE ES FI FR GE HR HU IT KZ LI LT LU LV MC
                                       MD ME MK NL NO PL PT RO RS RU SE SI SK SM TR UA VA].freeze
end
