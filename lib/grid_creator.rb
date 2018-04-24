class GridCreator

  attr_reader :height, :width

  def initialize(width, height)
    @height = height
    @width = width
  end

  def vertical_edge_generator
    0
  end

end
