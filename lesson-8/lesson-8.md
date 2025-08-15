## 📱 Creating the Logic

At the moment, when we press the deal button, our app is printing `deal cards` in the console. What we want to make happen in this lesson is randomly pick cards for both the player and the user. Then, depending on who has the higher card gets the point.


-----

### Chapter 1: Randomise Cards

Let's start by randomising the cards. To do this, we are going to edit our function that we made last lesson:
```
func deal() {
    print("Cards Delt")
}
```

Let's start by laying out our function using comments `//`.
```
func deal() {
    // Randomise players card

    // Randomise cpu card

    // Update the scores
}
```

If you look in the `asset` folder on the app, you will notice that all the cards have been named `card` followed by a number. This is how we are going to randomly pick our card. We are first going to get a random number between 2 and 14:
```
func deal() {
    // Randomise players card
    playerCard = "card" + String(Int.random(in: 2...14))

    // Randomise cpu card

    // Update the scores
}
```

Here we will be running into an error. To fix this error, we need to adjust the current variable we are changing to a `State wrapped` variable so that Xcode and Swift understand that UI is dependent on this variable.

To do that, we are going to change the variable to:
```
@State var playerCard = "card7"
```

We can now do the same for the CPU card to.


-----

### Conditional statements

Now we need to look at how we can choose who won the point. To do this, we are going to use an `if` statement. What we are going to do is check if `playerCard` value is greater than `cpuCard` value. Then if it is, add one point to the `playersScore`, else add one point to the `cpuScore`.
```
func deal() {
    // Randomise players card
    playerCard = "card" + String(Int.random(in: 2...14))

    // Randomise cpu card
    cpuCard = "card" + String(Int.random(in: 2...14))

    // Update the scores
    if 
}
```


















