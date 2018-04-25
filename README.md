# grid-creator

## the rules:

![](./images/grid-creator-rules.png)

## How to use

in the terminal:

1.  install the ruby gems using `bundle install`
2.  load up irb using the `irb` command.
3.  create a new GridCreator class and assign it to a variable, passing in a height and width:

```
grid_creator = GridCreator.new(5, 7)
```

then, call the print_grid method on it, to see the grid displayed:

```
grid_creator.print_grid
┌-----┐
|     |
|     |
|     |
└-----┘
```

## My Approach

First, I broke down the problem into logical steps, and came up with a set of rules:

1.  There will always be four corners to the grid, and so always only one of each of the corner ASCII characters.
2.  Once the width is greater than 2, the amount of horizontal edges to be printed will be the width - 2.
3.  Once the height is greater than 2, the amount of vertical edges to be printed will be the height - 2.

I decided to use ruby for this exercise, as I am much more comfortable TDD'ing business logic in Ruby, and I wanted to do this exercises using classes and OO design, which I am again more comfortable doing in Ruby.

My first step was to TDD the 'GridCreator' class, which is where I would originally hold the logic for numbers 2 and 3 of my above rule set. The main method is the edge_generator, which takes in an edge type ('-' or '|') and a height_or_width property, and uses this to return an array of the correct amount of edges.

Once this step was complete, I knew I would need to print out the actual grid in the desired format.

To do this, I created a 'GridPrinter' class, TDD'ing to make sure each method would print out the correct piece of the grid - one method to print out the horizontal edges, and one to print the verticals.

To print the whole thing, one thing I hadn't originally foreseen is that the vertical edge printing would have to do both sides of the box at once to print on the same line of the console, and so I also had to figure out the spacing in the middle of the grid or box. I added this into the tests, and then refactored my printing methods to pass it.

Finally, I felt that my classes where still doing too much. Grid Creator was generating edges, and none of the classes were linked and interacting with each other. I refactored, extracting the edge generation into a separate class, and refactoring my printer to use this class to get the edges and then print them.

This left my edge creator class with the task of using the Grid Printer class to just take the user input, and pass that on to the printer to print the grid to the terminal.

## How it works

Here is how the implementation is run in the terminal:

```
IRB config loaded.
2.5.0 :001 > gc = GridCreator.new(4, 4)
 => #<GridCreator:0x00007fc78b80ae30 @height=4, @width=4>
2.5.0 :002 > gc.print_grid
┌--┐
|  |
|  |
└--┘ => nil
2.5.0 :003 >
2.5.0 :005 > gc = GridCreator.new(6, 3)
 => #<GridCreator:0x00007fc78b952068 @height=3, @width=6>
2.5.0 :006 > gc.print_grid
┌----┐
|    |
└----┘ => nil
```

## What I would do differently

The task initially put me off - as it asked for just a method to do all of this. I decided to make it class based, as i realised a fair amount of code would need to be written, and it would allow me to hone my design process.

I initially planned for only two classes, a printer class and a creator class, but it became clear that this would not adhere to single responsibility, and would be more difficult to test. I would have spent a little bit more time planning, and designing my system, as I had to do a relatively messy refactor (and I am still not entirely happy with the approach - I would like to abstract away the unicode characters and '-' '|' characters, but felt a class was overkill.)
