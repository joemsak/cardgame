require 'cardgame/action'

module Cardgame
  class ActionCard < Card

    attr_reader :action

    def initialize
      @action = Action.random
    end

    def display
<<-DISPLAY
Name: #{action.name}
Description: #{action.description}
DISPLAY
    end
  end
end