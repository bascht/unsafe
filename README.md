# This Gem is unsafe

Want to try Rust [unsafe{}](https://doc.rust-lang.org/book/unsafe.html)?
Still stuck with Ruby?

This is for you.

## All the goodness in one Gem

* No Garbage collector
* Nullpointers
* Uncertainty.

```ruby
#!/usr/bin/env ruby
# -- encoding: utf-8 --

require 'unsafe/unsafe'

CHANCE_OF_DOOM=0.5

unsafe {
  (1..10).each do |i|
    puts "I'm fine."
    sleep 1
  end
}
```
