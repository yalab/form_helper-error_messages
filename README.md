# FormHelper::ErrorMessages

Extend ActionView::Helepr::FormHelper for rendering error message on any position.

## Installation

Add this line to your application's Gemfile:

    gem 'form_helper-error_messages'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install form_helper-error_messages

## Usage

```ruby
# You can put error message any position.
<%= from_for(@user) do |f| %>
  <%= f.text_field :name %>
  <%= f.error_messages :name %>
<% end %>

# <form accept-charset="UTF-8" action="/users" class="new_user" id="new_user" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
# <div class="invalid">Name can&#x27;t be blank</div>
# </form>
```
You can choose any tags or any class name like this.

```ruby
<%= from_for(@user) do |f| %>
  <%= f.text_field :name %>
  <%= f.error_messages :name, tag: 'span', class: 'error' %>
<% end %>

# <form accept-charset="UTF-8" action="/users" class="new_user" id="new_user" method="post">
# <div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div><span class="error">Name can&#x27;t be blank</span></form>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
