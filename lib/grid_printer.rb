class GridPrinter
  def initialize(horizontal_edges, vertical_edges)
    @horizontal_edges = horizontal_edges
    @vertical_edges = vertical_edges
  end

  def horizontal_edge_printer
    print @horizontal_edges.join('')
  end

  def vertical_edge_printer
    @vertical_edges.each do |edge|
      puts edge
    end
  end
end
