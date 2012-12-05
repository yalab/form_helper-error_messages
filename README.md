# ActionView::Helpers::FormHelper::ErrorMessages

Extend ActionView::Helepr::FormHelper for rendering error message with using rails form_for.

## Installation

Add this line to your application's Gemfile:

    gem 'action_view-helpers-form_helper-error_messages'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install action_view-helpers-form_helper-error_messages

## Usage

```ruby
<%= from_for(@user) do |f| %>
  <%= f.text_field :name %>
  <%= f.error_message :name %>
<% end %>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
