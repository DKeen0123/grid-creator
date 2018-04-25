# grid-creator

## the rules:

![](./images/grid-creator-rules.png)

## My Approach

First, I broke down the problem into logical steps, and came up with a set of rules:

1.  There will always be four corners to the grid, and so always only one of each of the corner ASCII characters.
2.  Once the width is greater than 2, the amount of horizontal edges to be printed will be the width - 2.
3.  Once the height is greater than 2, the amount of vertical edges to be printed will be the height - 2.

My first step was to TDD the 'GridCreator' class, which is where I would originally hold the logic for numbers 2 and 3 of my above rule set. The main method is the edge_generator, which takes in an edge type ('-' or '|') and a height_or_width property, and uses this to return an array of the correct amount of edges.

Once this step was complete, I knew I would need to print out the actual grid in the desired format.

To do this, I created a 'GridPrinter' class, TDD'ing to make sure each method would print out the correct piece of the grid - one method to print out the horizontal edges, and one to print the verticals.

To print the whole thing, one thing I hadn't originally foreseen is that the vertical edge printing would have to do both sides of the box at once to print on the same line of the console, and so I also had to figure out the spacing in the middle of the grid or box. I added this into the tests, and then refactored my printing methods to pass it.
