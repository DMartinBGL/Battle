require 'player'

describe Player do
  subject(:dave) { Player.new('Dave') }
  subject(:mittens) { Player.new('Mittens') }

  it "creates an instance of Player" do
    expect(dave).to be_an_instance_of Player
  end

  it 'sets hp to a deafult value' do
    expect(dave.hp).to eq Player::DEFAULT_HP
  end

  it "is expected to return a name" do
    expect(dave.name).to eq "Dave"
  end

  describe '#damage' do
    it "reduces HP by a number" do
      dave.damage
      expect(dave.hp).to eq 50
    end
  end

  describe '#attack' do
    it 'should attack another player' do
      expect{dave.attack(mittens)}.to change {mittens.hp}.by(-10)
    end
  end
end