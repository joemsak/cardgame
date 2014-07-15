require 'cardgame/card'

module Cardgame
  class Deck
    def self.draw
      Card.new # this will become Card.random
    end
  end
end
