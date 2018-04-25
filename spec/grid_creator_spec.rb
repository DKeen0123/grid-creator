require 'grid_creator'

describe GridCreator do
  let(:grid_printer) { double 'grid printer' }
  subject(:grid_creator) { described_class.new(4, 4) }

  describe '#initialize' do
    it 'initializes with a height' do
      expect(grid_creator.height).to eq 4
    end

    it 'initializes with a width' do
      expect(grid_creator.width).to eq 4
    end
  end

  describe '#print_grid' do
    it 'prints the grid' do
      allow(grid_printer).to receive(:print_full_grid) { "\u250C--\u2510\n|  |\n|  |\n\u2514--\u2518"}
      expect { grid_creator.print_grid(grid_printer) }.to output("\u250C--\u2510\n|  |\n|  |\n\u2514--\u2518").to_stdout
    end
  end

end
