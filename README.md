OmniAuth Crunch
==============

This gem contains the Crunch.co.uk strategy for OmniAuth.

For more information about the Crunch API: https://developer.crunch.com/

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-crunch'
```

Then `bundle install`.

## Usage

`OmniAuth::Strategies::Crunch` is simply a Rack middleware. Read the OmniAuth docs for detailed instructions: https://github.com/intridea/omniauth.

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :crunch, ENV['CRUNCH_KEY'], ENV['CRUNCH_SECRET']
end
```

Questions
---------

For any question, fell free to send me a tweet [@simonreed](http://twitter.com/simonreed)
