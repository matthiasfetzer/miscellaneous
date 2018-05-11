# Guessing a number between 0 and 100 in R
# By Matthias Fetzer

#functions

readnumber <- function() {
  num <- readline(prompt="Enter an number: ")
  if(!grep("^[[:digit:]]*$", num) ) {
    return(readnumber())
  }
  return(as.integer(num))
}

# program workflow

number <- round(runif(1) * 100, digits = 0)
guess <- -1
cat("Guess a number between 0 and 100.\n")

while(guess != number) {
  guess <- readnumber()
  if (guess == number){
    cat("You entered the correct number,", number, "is right.\n")
  }
  else if (guess < number){
    cat("Number is bigger!\n")
  }
  else if(guess > number){
    cat("Number is smaller!\n")
  }
}
