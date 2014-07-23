require 'yaml'

module Cardgame
  class ActionCard < Card

    def initialize
      f = File.open("lib/cardgame/data/actions.yml", "r")
      actions = YAML.load(f)
      @action = actions.sample
    end

    def description
      @action.map { |attribute| "#{attribute[0].capitalize}: #{attribute[1]}" }.join("\n")
    end
  end
end