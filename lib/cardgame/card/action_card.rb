module Cardgame
  class ActionCard < Card

    def initialize
      @action = Yaml.load(File.read("data/actions.yml")).sample
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