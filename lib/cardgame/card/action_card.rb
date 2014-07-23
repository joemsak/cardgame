require 'yaml'

module Cardgame
  class ActionCard < Card

    def initialize
      f = File.open("lib/cardgame/data/actions.yml", "r")
      actions = YAML.load(f)
      @action = actions.sample
    end

    def description
      @action.map { |a| "#{a[0].capitalize}: #{a[1]}" }.join("\n")
    end
  end
end