require 'grid_creator'

describe GridCreator do
  subject(:grid_creator) { described_class.new(4, 4) }

  describe '#initialize' do
    it 'initializes with a height' do
      expect(grid_creator.height).to eq 4
    end

    it 'initializes with a width' do
      expect(grid_creator.width).to eq 4
    end
  end

end
