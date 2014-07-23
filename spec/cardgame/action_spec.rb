require 'cardgame/action'

module Cardgame
  describe Action do
    let(:action) { Action.new({'name' => 'Example'}) }

    describe '.all' do
      subject { Action.all }
      it { should be_a(Array) }
    end

    describe '.random' do
      subject { Action.random }
      it { should be_a(Action) }
    end

    describe '#name' do
      subject { action.name }
      it { should eq "Example" }
    end
  end
end