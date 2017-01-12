# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 colors (representing marbles).
marbles <- c("red", "black", "gray", "blue", "green", "white")

# Use the `sample()` function to randomly select a single marble
sample(marbles, 1)

# Define a function called MarbleGame. This function should:
# - Takes in a single argument `guess` that is a guess at what color marble will be drawn
# - Randomly samples a marble from the vector
# - Returns whether or not the person guessed accurately (preferrably a character string phrase)
MarbleGame <- function(guess){
 chosen <- sample(marbles, 1)
 if(chosen == guess){
   return("You guessed it right!")
 }else{
   return(paste("You guessed it wrong! It was", chosen))
 }
}

# Play the marble game by guessing a color!
MarbleGame("black")
not.won <- TRUE
tries <- 0
# Bonus: Play the marble game until you win, keeping track of how many tries you take
# Hint, you'll need to use a `while` control structure, which is not covered in the module
while(not.won){
  tries <- tries + 1
  result <- MarbleGame("black")
  if(result == "You guessed it right"){
    not.won <- FALSE
  }
}
print(tries)

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability
