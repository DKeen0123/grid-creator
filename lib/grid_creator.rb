class GridCreator

  attr_reader :height, :width

  def initialize(width, height)
    @height = height
    @width = width
  end

  def vertical_edge_generator
    @vertical_edges = []
    if @height <= 2
      return 0
    else
      (@height - 2).times { @vertical_edges.push('|')}
      return @vertical_edges
    end
  end

end
