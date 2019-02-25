# WillPaginate::Materialize

This gem integrates the [MaterializeCSS](https://github.com/Dogfalo/materialize) [pagination component](http://materializecss.com/pagination.html) with the [will_paginate](https://github.com/mislav/will_paginate) pagination gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'will_paginate-materialize', git: 'https://github.com/mldoscar/will_paginate-materialize', branch: 'master'
```

And then execute:

    $ bundle

## Usage

1. Install [Materialize-sass](https://github.com/mkhairi/materialize-sass) (if you haven't already)
2. Create a file named `will-paginate-materialize.rb` inside `config/initializers` and configure the iconset you want to use.
```ruby
  WillPaginate::Materialize.configure do |config|
    # Select one of the iconset you want to use
    # Material Design Icons
    config.iconset = :material_design
    # FontAwesome Icons
    config.iconset = :font_awesome
  end
```

3. Add the following to your application.scss file
```css
.pagination li.active a {
  color: #fff;
}
```
4. **For Material Design iconset use:** Follow the instructions for installing this gem in order to have this icon style in the left or right arrows: https://github.com/Angelmmiguel/material_icons

5. **For FontAwesome iconset use:** Follow the instructions for installing this gem in order to have this icon style in the left or right arrows: https://github.com/bokmann/font-awesome-rails

You're done! Use the will_paginate helper as you would otherwise.
```ruby
<%= will_paginate @collection %>
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/patricklindsay/will_paginate-materialize. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

### Further works
 * Add additional specs

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

