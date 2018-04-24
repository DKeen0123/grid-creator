class GridPrinter
  def initialize(horizontal_edges, vertical_edges)
    @horizontal_edges = horizontal_edges
    @vertical_edges = vertical_edges
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
