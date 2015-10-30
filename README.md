# This Gem is unsafe [![Build Status](https://travis-ci.org/bascht/unsafe.svg?branch=master)](https://travis-ci.org/bascht/unsafe)

Want to try Rust [unsafe{}](https://doc.rust-lang.org/book/unsafe.html)?
Still stuck with Ruby?

This is for you.

## All the goodness in one Gem

* No Garbage collector
* Nullpointers
* Uncertainty.

### Usage

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
Voila:

```shell
$ unsafe
I'm fine.
I'm fine.
I'm fine.
I'm fine.
I'm fine.
I'm fine.
/home/bascht/.rvm/gems/ruby-2.2.1/gems/unsafe-0.1-x86_64-linux/lib/unsafe/unsafe.rb:10: [BUG] Segmentation fault a
t 0x007f3e1ccaf805
ruby 2.2.1p85 (2015-02-26 revision 49769) [x86_64-linux]

-- Control frame information -----------------------------------------------
c:0003 p:---- s:0007 e:000006 CFUNC  :fire
c:0002 p:0044 s:0004 e:000003 BLOCK  /home/bascht/.rvm/gems/ruby-2.2.1/gems/unsafe-0.1-x86_64-linux/lib/unsafe/uns
afe.rb:10 [FINISH]
c:0001 p:---- s:0002 e:000001 TOP    [FINISH]

-- Ruby level backtrace information ----------------------------------------
/home/bascht/.rvm/gems/ruby-2.2.1/gems/unsafe-0.1-x86_64-linux/lib/unsafe/unsafe.rb:10:in `block in unsafe'
/home/bascht/.rvm/gems/ruby-2.2.1/gems/unsafe-0.1-x86_64-linux/lib/unsafe/unsafe.rb:10:in `fire'

-- Machine register context ------------------------------------------------
 RIP: 0x00007f3e1ccaf7c0 RBP: 0x0000000000000000 RSP: 0x00007f3e1cbac368
 RAX: 0x0000000000000000 RBX: 0x00000000011d45b0 RCX: 0x00007f3e1cbae038
 RDX: 0x00007f3e1ccaf7c0 RDI: 0x000000000120c1e0 RSI: 0x000000000120c1e0
  R8: 0x00007f3e24e9f240  R9: 0x000000000120c1e0 R10: 0x0000000000000000
 R11: 0x000000000120c190 R12: 0x0000000000000003 R13: 0x00000000012e0830
 R14: 0x00007f3e1ccadf70 R15: 0x0000000001239ee0 EFL: 0x0000000000010246

-- C level backtrace information -------------------------------------------
/home/bascht/.rvm/rubies/ruby-2.2.1/lib/libruby.so.2.2(rb_vm_bugreport+0x4ea) [0x7f3e24f6cdba] vm_dump.c:693
/home/bascht/.rvm/rubies/ruby-2.2.1/lib/libruby.so.2.2(rb_bug_context+0xcb) [0x7f3e24e065eb] error.c:425
/home/bascht/.rvm/rubies/ruby-2.2.1/lib/libruby.so.2.2(sigsegv+0x3e) [0x7f3e24ee367e] signal.c:879
/lib64/libpthread.so.0 [0x7f3e24b7e430]

```
