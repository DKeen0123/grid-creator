class GridPrinter
  def initialize(edge_generator)
    @horizontal_edges = edge_generator.horizontal_edge_generator
    @vertical_edges = edge_generator.vertical_edge_generator
  end

  def horizontal_edge_printer
     @horizontal_edges.join('')
  end

  def vertical_edge_printer
    spaces = ' ' * @horizontal_edges.length
    @vertical_edges.each do |edge|
      puts edge + spaces + edge
    end
  end

  def print_full_grid
    print "\u250C#{horizontal_edge_printer}\u2510\n"
    vertical_edge_printer
    print "\u2514#{horizontal_edge_printer}\u2518"
  end
end
