class EdgeGenerator

  def initialize(height, width)
    @height = height
    @width = width
  end

  def vertical_edge_generator
    @vertical_edges = edge_generator('|', @height)
  end

  def horizontal_edge_generator
    @horizontal_edges = edge_generator('-', @width)
  end

  private

  def edge_generator(edge_type, height_or_width)
    edges = []
    return 0 if height_or_width <= 2
    (height_or_width - 2).times do
      edges.push(edge_type)
    end
    edges
  end
end
