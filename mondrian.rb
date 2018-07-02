#!/usr/bin/env ruby -w

require "graphics"

class Mondrian < Graphics::Simulation
  CLEAR_COLOR = :white

  def initialize
    super 800, 800
  end
end

Mondrian.new.run
