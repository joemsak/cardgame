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
      "ACTION\nName: #{@action[:name]}\nDescription: #{@action[:description]}"
    end
  end
end