require 'cardgame/card'
require 'cardgame/card/buildable_card'
require 'cardgame/card/action_card'

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

  describe ActionCard do
    let(:actions) { [{name: "Example"}] }
    let(:card) {
      stub_const("Cardgame::ActionCard::ACTIONS", actions)
      ActionCard.new
    }

    describe '#initialize' do
      subject { card }
      it "should assign an action" do
        expect(subject.instance_variable_get(:@action)).to_not be_nil
      end
    end

    describe '#description' do
      subject { card.description }
      it { should include("Name: #{actions.first[:name]}") }
    end
  end
end
