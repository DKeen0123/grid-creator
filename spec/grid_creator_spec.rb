require 'grid_creator'

describe GridCreator do
  subject(:grid_creator) { described_class.new(4, 4) }
  subject(:small_grid) { described_class.new(2,2) }

  describe '#initialize' do
    it 'initializes with a height' do
      expect(grid_creator.height).to eq 4
    end

    it 'initializes with a width' do
      expect(grid_creator.width).to eq 4
    end
  end

  describe '#vertical_edge_generator' do
    it 'returns no vertical_edges if height is 2 or less' do
      expect(small_grid.vertical_edge_generator).to eq 0
    end
  end

end
