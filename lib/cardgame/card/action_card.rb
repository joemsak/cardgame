module Cardgame
  class ActionCard < Card
    ACTIONS = [
      {
        name: "Strike",
        description: "One rival crew goes on strike for one turn"
      }
    ]

    def initialize
      @action = ACTIONS.sample
    end

    def description
      str = "ACTION"

      unless @action[:name].nil?
        str += "\nName: #{@action[:name]}"
      end

      unless @action[:description].nil?
        str += "\nDescription: #{@action[:description]}"
      end

      str
    end
  end
end