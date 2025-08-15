## 📱 SwiftUI Buttons and Properties

We are now back in the `War card game` we build in lesson 4. Today we are looking at adding buttons and function to the game.

### Chapter 1: Adding a Button

The first thing we are going to do is remove the image that we used as a placeholder for our button. Then we are going to add a button by dragging it in from the library:
```
Button("Button") {
    Action
}
```

As you can see, at the moment the button is a `text` button. To change this to an image, we are going to have to type out the button with diffrent parameters because the library does not store this type of button.
```
Button(action: () -> Void, label: () -> _)
```

What will happen now is if you double click in the action part of the button in the code editor, it will transform into this:
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


What we are going to do is add our new function that we can then call in the top `code` of our button.

To do this, we can collaps our current code thats inside of body and then begin writing the function after the fold:
```
struct ContentView: View {
    var body: some View {...}

    func deal() {
        
    }
```













