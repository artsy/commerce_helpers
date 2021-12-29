# frozen_string_literal: true

RSpec.describe AddressHelper do
  it 'has a version number' do
    expect(AddressHelper::VERSION).not_to be nil
  end

  it 'has a list of countries with VAT' do
    expect(AddressHelper::COUNTRIES_WITH_VAT).not_to be_empty
  end
end
