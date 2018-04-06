require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  it 'creates two players' do
    expect(game.player_1).to eq player_1
    expect(game.player_2).to eq player_2
  end



  describe '#attack' do
    it 'attacks a player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end
