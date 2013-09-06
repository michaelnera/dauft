# DAUFT

    **Design Applications Using Foundation Templates**

    This gem uses [Zurb Foundation](http://foundation.zurb.com/templates.php) HTML templates.

    This gem requires you to install **zurb-foundation** gem.

    For the current version, these are the available templates: Banded, Blog, Feed, Grid, and Store


## Installation

First, add zurb-foundation gem. Add this to your Gemfile under assets group:

    gem 'zurb-foundation'


Then, add this line under development group:

    gem 'dauft'

And then execute:

    $ bundle


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



## Links/References

1. Zurb Foundation home page: http://foundation.zurb.com/
2. Zurb Foundation github: https://github.com/zurb/foundation
2. Zurb Foundation templates: http://foundation.zurb.com/templates.php


