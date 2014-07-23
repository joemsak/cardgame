require 'yaml'

module Cardgame
  class Action
    def self.all
      f = File.open("lib/cardgame/data/actions.yml", "r")
      YAML.load(f).map { |action| Action.new(action) }
    end

    def self.random
      self.all.sample
    end

    def initialize(attrs={})
      attrs.each do |a|
        define_singleton_method(a[0].to_sym) { a[1] }
      end
    end
  end
end