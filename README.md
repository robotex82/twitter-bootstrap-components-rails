# Twitter::Bootstrap::Components::Rails
Short description and motivation.

## Upgrading to 1.0.0

Version 1.0.0 does not include jquery-rails by default anymore. You need to require
the gem by yourself or load jquery from a cdn.


## Usage
Add the helper to your application controller.

Bootstrap v3

```ruby
class ApplicationController < ActionController::Base
  view_helper Twitter::Bootstrap::Components::Rails::V3::ComponentsHelper, as: :bootstrap_heper
end
```

Bootstrap v4

```ruby
class ApplicationController < ActionController::Base
  view_helper Twitter::Bootstrap::Components::Rails::V4::ComponentsHelper, as: :bootstrap_heper
end
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'twitter-bootstrap-components-rails'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install twitter-bootstrap-components-rails
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
