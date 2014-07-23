module Cardgame
  class BuildableCard < Card
    def display
      "Build cost: #{build_cost}"
    end

    def build_cost
      1
    end
  end
end
