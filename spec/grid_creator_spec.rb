require 'grid_creator'

describe GridCreator do
  subject(:grid_creator) { described_class.new(4, 4) }

  it "initializes with a width and a height" do
    expect(grid_creator.height).to eq 4
  end
end
