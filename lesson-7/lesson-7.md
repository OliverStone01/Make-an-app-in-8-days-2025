## 📱 SwiftUI Buttons and Properties

We are now back in the `War card game` we build in lesson 4. Today we are looking at adding buttons and function to the game.

### Chapter 1: Adding a Button

The first thing we are going to do is remove the image that we used as a placeholder for our button. Then we are going to add a button by dragging it in from the library:
```
Button("Button") {
    Action
}
```

As you can see, at the moment the button is a `text` button. To change this to an image, we are going to have to type out the button with different parameters because the library does not store this type of button.
```
Button(action: () -> Void, label: () -> _)
```

What will happen now is if you double click in the `action` part of the button in the code editor, it will transform into this:
```
Button {
    code
} label: {
    code
}
```

To add the image, we just change the bottom `code` to an `image` element like this:
```
Button {
    code
} label: {
    Image("button")
}
```


Now, we are going to add our new function that we can then call in the top `code` of our button.

To do this, we can collapse our current code thats inside of `view body` and then begin writing our function after the fold. Lets first start with something basic that when the button is pressed, it prints `deal cards` to the console:
```
struct ContentView: View {
    var body: some View {...}

    func deal() {
        print("deal cards")
    }
```

Now, in our button, we can change our top bit of `code` to call to the function as our action:
```
Button {
    deal()
} label: {
    Image("button")
}
```

-----

### Chapter 3: Properties

Let's now look at how we can make our function change the card that is displayed and how we can update the score based on some algorithm.

Well, the first thing we need to do is look at how we can display different cards. What we are going to do is create two variables outside of the body and set the value of those variables to a card value. Then we will change the images that are inside of the body from hard coded values like `card12` to the variable we just set:
```
import SwiftUI

struct ContentView: View {

    var playerCard = "card7"
    var cpuCard = "card13"

    var body: some View {

        ZStack {

            Image("background-plain")
                .resizable()
                .ignoreSafeArea()

            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
```

Let's now do the same thing for the scores so that we can update the variable to update the text. We are going to create two new variables called `playerScore` and `cpuScore`. We are going to assign the integer `0` to both of these. The issue we run into when we then reference these variables using the text element is that they are not the same type of data.

To fix this, we can convert the integer data coming from the variable into string data. To do this we can do `Text(String(playerScore))`.

This will now convert the value of `playerScore` into a string.

This process is called casting.


-----
