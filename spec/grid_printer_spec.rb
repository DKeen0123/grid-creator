require 'grid_printer'

describe GridPrinter do
  vertical_edges = ['|', '|']
  horizontal_edges = ['-', '-']
  let(:edge_generator) {
     double 'edge generator', :vertical_edge_generator => vertical_edges, :horizontal_edge_generator => horizontal_edges
     }

  subject(:grid_printer) do
    described_class.new(edge_generator)
  end

  describe '#horizontal_edge_printer' do
    it 'prints horizontal edges to the console in the correct format' do
      expect(grid_printer.horizontal_edge_printer).to eq('--')
    end
  end

  describe '#vertical_edge_printer' do
    it 'prints vertical edges to the console in the correct format' do
      expect { grid_printer.vertical_edge_printer }.to output("|  |\n|  |\n").to_stdout
    end
  end

  describe '#print_full_grid' do
    it 'prints the whole grid to_stdout' do
      expect { grid_printer.print_full_grid }.to output("\u250C--\u2510\n|  |\n|  |\n\u2514--\u2518").to_stdout
    end
  end
end
