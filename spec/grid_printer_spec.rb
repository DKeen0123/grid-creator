require 'grid_printer'

describe GridPrinter do
  vertical_edges = ['|', '|']
  horizontal_edges = ['-', '-']
  subject(:grid_printer) { described_class.new(horizontal_edges, vertical_edges) }

  describe '#horizontal_edge_printer' do
    it 'prints horizontal edges to the console in the correct format' do
      expect { grid_printer.horizontal_edge_printer }.to output('--').to_stdout
    end
  end

  describe '#vertical_edge_printer' do
    it 'prints vertical edges to the console in the correct format' do
      expect { grid_printer.vertical_edge_printer }.to output("|  |\n|  |\n").to_stdout
    end
  end

  # describe '#print_full_grid' do
  #   it 'prints the whole grid to_stdout' do
  #     expect { grid_printer.print_full_grid }.to output("\u")
  #   end
  # end
end
