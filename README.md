[![Gem Version](https://badge.fury.io/rb/carrierwave-neo4j-data-uri.svg)](https://badge.fury.io/rb/carrierwave-neo4j-data-uri)[![Code Climate](https://codeclimate.com/github/vishalgarg231/carrierwave-neo4j-data-uri/badges/gpa.svg)](https://codeclimate.com/github/vishalgarg231/carrierwave-neo4j-data-uri)

# Carrierwave::Neo4j::Data::Uri !! Kudos !!

Carrierwave Neo4j plugin that allows to create image from data uri

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'carrierwave-neo4j-data-uri'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install carrierwave-neo4j-data-uri

Next to install it run

    $ rails generate carrierwave_neo4j_data_uri:install

## Usage

```ruby
class Image
  include Neo4j::ActiveNode

  property :attachment, type: String
  mount_uploader :attachment, AttachmentUploader
end
```

Then we can create image from data

```
image = Image.new
image.attachment_data_uri = 'data:image/gif;base64,R0lGODlhAQABAJEAAAAAAP////8AAP///yH5BAEAAAMALAAAAAABAAEAAAICVAEAOw=='
image.save
```

Optionally, to customize the file name, specify the `#{column}_data_filename` and `#{column}_data_mimetype` attributes before the `#{column}_data_uri` attribute.

```ruby
image = Image.find 'f854208e-3fc9-4bf7-b9c9-dad46c596ed6'
image.attachment_data_filename = 'somefile.jpg'
image.attachment_data_mimetype = 'image/jpeg'
image.attachment_data_uri = 'data:image/gif;base64,R0lGODlhAQABAJEAAAAAAP////8AAP///yH5BAEAAAMALAAAAAABAAEAAAICVAEAOw=='
image.save
```

## Documentation

Documentation is available [here](http://www.rubydoc.info/gems/carrierwave-neo4j-data-uri)

## Example

Usage examples is also available [here](example/mock.rb)


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/vishalgarg231/carrierwave-neo4j-data-uri/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
