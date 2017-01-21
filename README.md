# SoBi Client

A command line app for SoBi clients - works with
[SoBi server](https://github.com/jpietrzyk/sobi-srv), and
deliver bike informations.

## Usage

You should first install SoBi Server from here
https://github.com/jpietrzyk/sobi-srv, then clone this repo to your local machine and run `bin/setup` to install dependencies.  

Modify `.env` file if you need to change your redis config.

Run `exe/sobi_cli {bike_id}` to send data to SoBi Server - `bike_id` **have to** be an integer value

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jpietrzyk/sobi_cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
