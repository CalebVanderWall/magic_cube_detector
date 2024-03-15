A magic cube is a three-dimensional array of distinct numbers arranged in a cube such that the sum of the numbers along each row, column, and diagonal is constant. 

A common technique of creating magic cubes or squares is indexing sequencial integers in certain indexing patterns. An example of such a patter would be the following.

For an nxn matrix, where n is odd, place your first number 1 in the bottom column in the middle of the row. Then move 1 position down and 1 position right. Place the next 
integer 2 here. Continue moving in such a way. When you reach a boundry of the matrix, continue at the oposite side of the matrix (kind of like a pacman board) and continue 
the movements. When you reach a position that is already occupied by an integer, move left one position and down one position the movement. This should populate an nxn matrix
with integers where each row column and main diagnols add to the same number

This function can be used to test different movement algorithms to see if the produced cube is "magic" or not. 


INPUTS
There are 13 inputs to this function.

n - Size of cube.
  This determines the length, width and depth of desired cube.
    EXAMPLE
    To create a 3x3x3 cube, n = 3
    n = 25 would produce a 25x25x25 cube

h,i,j - Starting positions
  These inputs determine the starting position of the first integer
  h - row
  i - column
  j - array ( depth of cube )
    EXAMPLE for a 3x3 cube
    h=1,i=2,j=3

    0  0  0      0  0  0      0  x  0
    0  0  0      0  0  0      0  0  0
    0  0  0      0  0  0      0  0  0

    x would be where the first integer would be located

u,v,w - Standard movement algorithm 
  These inputs determine the pattern of indexing algorithm.
  u - row movement (positive values move down)
  v - column movemnt (positive values move right)
  w - plane movement (positive values move through)
    EXAMPLE
    u=1, v=-1, w=3
    From the previously indexed integer, the next position to place an integer would be up one down one row, left one place, and through 3 planes.

x,y,z - Conflict movement
  If and when a selected position is occuplied, these inputs give an alternate pattern to select an indexed position from the last indexed integer.

r,s,t - Secondary Conflict Movement
  After a conflict movement takes place, if the slected position is already occupied by an integer, these inputs give another alternate indexing movement from the last indexed integer.

NOTE
  If an indexed position is outside of the boundries of the generated nxn cube, the algorithm will go to the opposite side of the row, column or plane and continue.
  Kind of as if this cube was a big 3D pacman board.

The function will then detect if the cube is not magic.

    





  
    
  
