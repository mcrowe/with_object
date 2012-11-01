# WithObject

Ever gotten frustrated with duplication when writing something like:

```ruby
report.update_totals
report.balance_totals
report.synchronize
report
```

Did you use `tap`, or use a single character variable name to reduce the typing?

Wouldn't you rather write:

```ruby
with report do
  update_totals
  balance_totals
  synchronize
end
```

Use `with_object`!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'with_object'
```

And then execute:

    $ bundle

## Usage

It's pretty simple. Just call `with` anywhere. Method calls inside the block are called on the object, and the whole expression returns the object. Privacy of methods and instance variables are maintained, and `NoMethodError` exceptions are thrown as appropriate. In short, it works the way you'd expect it to...

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
