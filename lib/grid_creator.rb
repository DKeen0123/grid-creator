class GridCreator
  attr_reader :height, :width

  def initialize(width, height)
    @height = height
    @width = width
  end

  def print_grid(printer = GridPrinter.new(EdgeGenerator.new(@height, @width)))
    print printer.print_full_grid
  end
end
