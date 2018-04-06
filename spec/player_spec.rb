require 'player'

describe 'Player' do
  subject(:dave) { Player.new('Dave') }
  subject(:mittens) { Player.new('Mittens') }

  describe '#name' do
    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(dave.hit_points).to eq 60
    end
  end

  describe '#receive_damage' do
    it 'damages the player' do
      mittens.receive_damage
      expect(mittens.hit_points).to eq(50)
    end
  end
end
