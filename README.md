# CommerceHelpers [![CircleCI][badge]][circleci]

CommerceHelpers is a library to provide address-related helpers and data. It is built as a Ruby gem and Node package, and
aims to share things across stacks.

## Installation and Usage

### As a Ruby gem

Add this line to your application's Gemfile:

```ruby
gem 'commerce_helpers', git: 'https://github.com/artsy/commerce_helpers.git', branch: 'main'
```

And execute:

    bundle install

Then it can be accessed through the `CommerceHelpers` module, for example:

```ruby
CommerceHelpers::COUNTRIES_IN_CONTINENTAL_EUROPE
```

### As a Node package

Run:

    yarn add artsy/commerce_helpers

Then it can be accessed as:

```javascript
import { COUNTRIES_IN_CONTINENTAL_EUROPE } from "@artsy/commerce_helpers"
```

## Development

After making changes locally, run `bundle exec rspec` to run the tests.

## Contributing

Bug reports and pull requests are welcome on GitHub. This project is intended to be a safe, welcoming space for
collaboration, and contributors are expected to adhere to the [code of conduct][code_of_conduct].

## License

The gem is available as open source under the terms of the [MIT License][license].

## Code of Conduct

Everyone interacting in the CommerceHelpers project's codebases, issue trackers, chat rooms and mailing lists is expected
to follow the [code of conduct][code_of_conduct].

[badge]: https://circleci.com/gh/artsy/commerce_helpers/tree/main.svg?style=shield
[circleci]: https://circleci.com/gh/artsy/commerce_helpers/tree/main
[code_of_conduct]: https://github.com/artsy/commerce_helpers/blob/main/CODE_OF_CONDUCT.md
[license]: https://opensource.org/licenses/MIT
