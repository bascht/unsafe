#!/usr/bin/env ruby
# -- encoding: utf-8 --

require 'lose_kanone/lose_kanone'

def unsafe
  GC.disable
  Thread.new do
    sleep rand(10) # keep it interesting
    Kanone.fire if rand < (CHANCE_OF_DOOM || 0.1)
  end
  yield
  GC.enable
end
