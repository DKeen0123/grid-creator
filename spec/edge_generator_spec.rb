require 'edge_generator'

describe EdgeGenerator do
  subject(:horizontal_edge_generator_big) { described_class.new(4, 4) }
  subject(:horizontal_edge_generator_small) { described_class.new(2, 2) }
  subject(:vertical_edge_generator_big) { described_class.new(4, 4) }
  subject(:vertical_edge_generator_small) { described_class.new(2, 2) }

  describe '#vertical_edge_generator' do
    it 'returns no vertical edges if height is 2 or less' do
      expect(vertical_edge_generator_small.vertical_edge_generator).to eq 0
    end

    it 'returns height - 2 vertical edges' do
      expect(vertical_edge_generator_big.vertical_edge_generator).to eq ['|', '|']
    end
  end

  describe '#horizontal_edge_generator' do
    it 'returns no horizontal edges if width is 2 or less' do
      expect(horizontal_edge_generator_small.horizontal_edge_generator).to eq 0
    end

    it 'returns width - 2 horizontal edges' do
      expect(horizontal_edge_generator_big.horizontal_edge_generator).to eq ['-', '-']
    end
  end
end
