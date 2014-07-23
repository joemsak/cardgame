require 'cardgame/action'

module Cardgame
  class ActionCard < Card

    def initialize
      @action = Action.random
    end

    def display
      "Name: #{@action.name}\nDescription: #{@action.description}"
    end
  end
end