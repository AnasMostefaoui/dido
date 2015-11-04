![image](assets/header.png)

Dido
===========

Dido is a command line tool written on Ruby that generates XCode Swift projects ready to start coding your library. Generated project is ready to be integrated with [Carthage](https://github.com/carthage/carthage), [CocoaPods](https://cocoapods.org) and integrate with TravisCI

### Why?
Every time you start working on a new library you have to setup the project, create the frameworks, add the dependencies, add the configuration, ..., that every time. Could we automatize that? That's what Dido does. `CocoaPods` offers a similar tool but it's only CocoaPods compatible and this tool was also proposed for Carthage but didn't suite at all with the Carthage philosofy.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'Dido'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install Dido

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gitdoapp/Dido. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

