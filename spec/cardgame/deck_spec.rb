require 'cardgame/deck'

module Cardgame
  describe Deck do
    describe '.draw' do
      subject { Deck.draw }
      it { should respond_to(:display) }
    end
  end
end
