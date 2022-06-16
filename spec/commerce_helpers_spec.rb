# frozen_string_literal: true

require 'countries'

RSpec.describe CommerceHelpers do
  it 'has a version number' do
    expect(CommerceHelpers::VERSION).not_to be nil
  end

  it 'has a list of countries requiring VAT' do
    expect(CommerceHelpers::COUNTRIES_REQUIRING_VAT).to match_array(
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
    expect(CommerceHelpers::COUNTRIES_IN_CONTINENTAL_EUROPE).not_to be_empty
  end

  it 'has a list of countries in the European Union' do
    expect(CommerceHelpers::COUNTRIES_IN_EUROPEAN_UNION).to match_array(
      %w[
        Austria
        Belgium
        Bulgaria
        Croatia
        Cyprus
        Czechia
        Denmark
        Estonia
        Finland
        France
        Germany
        Greece
        Hungary
        Ireland
        Italy
        Latvia
        Lithuania
        Luxembourg
        Malta
        Netherlands
        Poland
        Portugal
        Romania
        Slovakia
        Slovenia
        Spain
        Sweden
      ].map do |name|
        ISO3166::Country.find_country_by_iso_short_name(name).alpha2
      end
    )
  end

  it 'has a list of countries that are supported by Artsy Shipping' do
    expect(CommerceHelpers::COUNTRIES_WITH_ARTSY_SHIPPING).to match_array(
      [
        'Austria',
        'Belgium',
        'Bulgaria',
        'Croatia',
        'Cyprus',
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
        'United States of America',
        'United Kingdom of Great Britain and Northern Ireland'
      ].map do |name|
        ISO3166::Country.find_country_by_iso_short_name(name).alpha2
      end
    )
  end
end
