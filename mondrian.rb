#!/usr/bin/env ruby -w

require "graphics"

class Mondrian < Graphics::Simulation
  CLEAR_COLOR = :white

  attr_accessor :xs

  def initialize
    super 800, 800

    self.xs = (0..w).step(40).to_a.sample rand(3..7)
  end

  def draw n
    super

    xs.each do |x|
      fast_rect x, 0, 20, h, :black
    end
  end
end

Mondrian.new.run
