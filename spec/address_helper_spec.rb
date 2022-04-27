# frozen_string_literal: true

require 'countries'

RSpec.describe AddressHelper do
  it 'has a version number' do
    expect(AddressHelper::VERSION).not_to be nil
  end

  it 'has a list of countries requiring VAT' do
    expect(AddressHelper::COUNTRIES_REQUIRING_VAT).to match_array(
      [
        'Austria',
        'Belgium',
        'Bulgaria',
        'Czechia',
        'Denmark',
        'Estonia',
        'Finland',
        'France',
        'Germany',
        'Greece',
        'Hungary',
        'Ireland',
        'Italy',
        'Latvia',
        'Lithuania',
        'Luxembourg',
        'Malta',
        'Mexico',
        'Netherlands',
        'Norway',
        'Poland',
        'Portugal',
        'Romania',
        'Slovakia',
        'Slovenia',
        'Spain',
        'Sweden',
        'Switzerland',
        'United Arab Emirates',
        'United Kingdom of Great Britain and Northern Ireland'
      ].map do |name|
        ISO3166::Country.find_country_by_iso_short_name(name).alpha2
      end
    )
  end

  it 'has a list of countries in continental Europe' do
    expect(AddressHelper::COUNTRIES_IN_CONTINENTAL_EUROPE).not_to be_empty
  end
end
