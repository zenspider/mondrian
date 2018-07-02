#!/usr/bin/env ruby -w

require "graphics"

class Mondrian < Graphics::Simulation
  CLEAR_COLOR = :white

  def initialize
    super 800, 800
  end

  def draw n
    super

    5.times do
      fast_rect rand(w), 0, 20, h, :black
    end
  end
end

Mondrian.new.run
