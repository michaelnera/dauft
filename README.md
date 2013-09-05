# DAUFT

    Design Applications Using Foundation Templates

## Installation

Add this line to your application's Gemfile:

    gem 'dauft'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dauft

## Usage
    To create a layout:

    $ rails g dauft:layout template_name

    To use this template for a controller, add this line to your controller:

    layout 'template_name'


    To create views that uses a template:

    $ rails g dauft:view template_name controller_name action_1 action_2


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
