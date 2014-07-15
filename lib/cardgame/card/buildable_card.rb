module Cardgame
  class BuildableCard < Card
    def description
      "Build cost: #{build_cost}"
    end

    def build_cost
      1
    end
  end
end
