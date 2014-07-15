require 'cardgame/card'
require 'cardgame/card/buildable_card'

module Cardgame
  describe Card do
    describe '#description' do
      subject { Card.new.description }
      it { should be_empty }
    end
  end

  describe BuildableCard do
    describe '#build_cost' do
      subject { BuildableCard.new.build_cost }
      it { should eq(1) }
    end

    describe '#description' do
      let(:card) { BuildableCard.new }
      subject { card.description }

      it { should include("Build cost: #{card.build_cost}") }
    end
  end
end
