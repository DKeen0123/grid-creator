class GridCreator
  attr_reader :height, :width

  def initialize(height, width)
    @height = height
    @width = width
  end

  def print_grid(printer = GridPrinter.new(EdgeGenerator.new(@height, @width)))
    print printer.print_full_grid
  end
end
