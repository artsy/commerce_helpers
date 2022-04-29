# AddressHelper [![CircleCI][badge]][circleci]

AddressHelper is a library to provide address-related helpers and data. It is built as a Ruby gem and Node package, and
aims to share things across stacks.

## Installation and Usage

### As a Ruby gem

Add this line to your application's Gemfile:

```ruby
gem 'address_helper', git: 'https://github.com/artsy/address_helper.git', branch: 'main'
```

And execute:

    bundle install

Then it can be accessed through the `AddressHelper` module, for example:

```ruby
AddressHelper::COUNTRIES_IN_CONTINENTAL_EUROPE
```

### As a Node package

Run:

    yarn add artsy/address_helper

Then it can be accessed as:

```javascript
import { COUNTRIES_IN_CONTINENTAL_EUROPE } from "@artsy/address_helper"
```

## Development

After making changes locally, run `bundle exec rspec` to run the tests.

## Contributing

Bug reports and pull requests are welcome on GitHub. This project is intended to be a safe, welcoming space for
collaboration, and contributors are expected to adhere to the [code of conduct][code_of_conduct].

## License

The gem is available as open source under the terms of the [MIT License][license].

## Code of Conduct

Everyone interacting in the AddressHelper project's codebases, issue trackers, chat rooms and mailing lists is expected
to follow the [code of conduct][code_of_conduct].

[badge]: https://circleci.com/gh/artsy/address_helper/tree/main.svg?style=shield
[circleci]: https://circleci.com/gh/artsy/address_helper/tree/main
[code_of_conduct]: https://github.com/artsy/address_helper/blob/main/CODE_OF_CONDUCT.md
[license]: https://opensource.org/licenses/MIT
