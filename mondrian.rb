#!/usr/bin/env ruby -w

require "graphics"

class Mondrian < Graphics::Simulation
  CLEAR_COLOR = :white

  def initialize
    super 800, 800
  end

  def draw n
    super
    fast_rect 100, 0, 20, h, :black
  end
end

Mondrian.new.run
