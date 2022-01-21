# frozen_string_literal: true

RSpec.describe AddressHelper do
  it 'has a version number' do
    expect(AddressHelper::VERSION).not_to be nil
  end

  it 'has a list of countries requiring VAT' do
    expect(AddressHelper::COUNTRIES_REQUIRING_VAT).not_to be_empty
  end

  it 'has a list of countries in continental Europe' do
    expect(AddressHelper::COUNTRIES_IN_CONTINENTAL_EUROPE).not_to be_empty
  end
end
