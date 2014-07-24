require 'cardgame/card'
require 'cardgame/card/buildable_card'
require 'cardgame/card/action_card'

module Cardgame
  describe Card do
    let(:card) { Card.new }

    describe '#display' do
      subject { card.display }
      it { should be_empty }
    end
  end

  describe BuildableCard do
    let(:card) { BuildableCard.new }

    describe '#build_cost' do
      subject { card.build_cost }
      it { should eq(1) }
    end

    describe '#display' do
      subject { card.display }
      it { should_not be_empty }
    end
  end

  describe ActionCard do
    let(:card) { ActionCard.new }

    describe '#display' do
      subject { card.display }
      it { should_not be_empty }
    end
  end
end
