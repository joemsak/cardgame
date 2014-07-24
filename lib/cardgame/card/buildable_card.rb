module Cardgame
  class BuildableCard < Card
    def display
<<-DISPLAY
Build cost: #{build_cost}
DISPLAY
    end

    def build_cost
      1
    end
  end
end
