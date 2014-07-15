require 'cardgame/card'
require 'cardgame/card/buildable_card'

module Cardgame
  describe Card do
    let(:card) { Card.new }

    describe '#description' do
      subject { card.description }
      it { should be_empty }
    end
  end

  describe BuildableCard do
    let(:card) { BuildableCard.new }

    describe '#build_cost' do
      subject { card.build_cost }
      it { should eq(1) }
    end

    describe '#description' do
      subject { card.description }
      it { should include("Build cost: #{card.build_cost}") }
    end
  end
end
