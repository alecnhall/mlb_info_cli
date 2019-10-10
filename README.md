# MlbInfo

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/mlb_info`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mlb_info'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mlb_info

## Usage

When the program starts it will prompt a menu with three input options and instructions for what options will do:

teams - This option will give a list of all Major League Baseball teams. If a user does not know any Major League Baseball teams this is a good way to find which team you would like more information about.

team name - If a user has a team in mind they can enter that team name and return the website for that team as well as the name of the field that they play their home games at.

exit - This input will allow the user to leave the program and return a message thanking the user for using the program and say "GO ASTROS" cause thats my favorite team ;)

If a user enters any input that is not recognized it will return a message asking for a correct input that corresponds with the options above.

I hope you enjoy this! I know it's not the most complex of programs but I would love input on how to expand its capabilities. I thought about maybe adding a players class to list all of the players on the roster and maybe having stat attributes for each player. This is just one idea, so please feel free to play with this as much as possible!



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/mlb_info.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
