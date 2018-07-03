#!/usr/bin/env ruby -w

require "graphics"

class Mondrian < Graphics::Simulation
  CLEAR_COLOR = :white

  HORIZONTAL = [0, 180]
  VERTICAL   = [90, 270]

  def initialize
    super 800, 800

    register_bodies random_coordinates(w, 3..7, 40).map { |x|
      Stripe.new(self, x, 0, 20, h, HORIZONTAL.sample)
    }

    register_bodies random_coordinates(h, 3..7, 40).map { |y|
      Stripe.new(self, 0, y, w, 20, VERTICAL.sample)
    }
  end

  def random_coordinates max, range, step = 1
    (0...max).step(step).to_a.sample rand range
  end

  class Stripe < Graphics::Body
    attr_accessor :width, :height

    def initialize s, x, y, w, h, a
      super s
      self.x, self.y, self.width, self.height = x, y, w, h

      self.m = 1 + rand(2)
      self.a = a
    end

    def update
      move
      bounce 0.0
    end

    class View
      def self.draw w, o
        w.fast_rect o.x, o.y, o.width, o.height, :black
      end
    end
  end
end

Mondrian.new.run
