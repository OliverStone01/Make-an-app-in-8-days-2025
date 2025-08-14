## How to build a user interface in Xcode

### Chapter 1: SwiftUI Views and Modifiers

Lets have a quick reminder on the building blocks that come together to build a user interface (UI).

A `view` is the elements that the user sees on the screen. `Modifiers` are applied to the views to change its behaviour or look and feel. `Layout containers` organsie and arrange views, these are also considered as a view. 

-----

### Chapter 2: Starting a New Xcode Project

We are going to start a new IOS project using the `app` framework. We are going to set the name to `L2-Demo`.

The first thing we are going to do once this loads is upload the image we want to use to the `asset` library.

-----

### Chapter 3: Building the core card

We are now going to edit the `ContentView` file which is the main page of our app. We are going to remove everything that is currently inside of the view, like this:
```
import SwiftUI

struct ContentView: View {
    var body: some View {


    }
}
```

-----

### Chapter 4: SwiftUI Image and Text

The first element we are going to add is the `image("Image Name")` element. We need to make sure we set the name inside of the image element to inside of quotes and to be the same as the image inside of the asset library.

Similarly to the first lesson, the image is way to big and is stretched over the entire screen. What we need to do now is add the `.resizable()` modifier to the element so that we can change its size. Then we need to add the `.aspectRatio(contentMode: .fit)` so that the image fits the screen. The last modifier we are going to use on the image is `.cornerRadius(15)` to round the corners of the image.

Next, because we want to add text below the image, we are going to place this image element inside of a `VStack` which allows us to stack multiple elements.

Now, below the image inside of the VStack, we are going to add the text elements.
```
import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack {
            Image("fields")
                .resizable()
                .aspectRatio((contentMode: .fit)
                .cornerRadius(15)

            Text("Fields")

            Text("Come and visit the most beautiful view.")

    }
}
```

<img alt="image and text without modifiers" src="/lesson-3/image-assets/image-text-no-modifiers.png" style="width:140px">

Now we have added our text, we want to left align everything in the VStack. To do this, we can click on the VStack and use the inspector panel on the right side of the screen and at the top is `Alignment`. Here we will choose the left most button. Next, we are going to add a spacing between each item in the VStack. Above `Alignment` in the inspector area, you will see `Spacing`. We will put 20 here to create the spacings.

Once we use this button, the code will be updated with the relevant modifier to adjust all elements in the VStack to the left. Here is how it looks:
```
import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack (alignment: .leading, spacing: 20.0) {
            Image("fields")
                .resizable()
                .aspectRatio((contentMode: .fit)
                .cornerRadius(15)

            Text("Fields")

            Text("Come and visit the most beautiful view.")

    }
}
```

Now, let's edit the title text by adding the modifiers `.font(.title)` and `.fontWeight(.bold)`:
```
import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack (alignment: .leading, spacing: 20.0) {
            Image("fields")
                .resizable()
                .aspectRatio((contentMode: .fit)
                .cornerRadius(15)

            Text("Fields")
                .font(.title)
                .fontWeight(.bold)

            Text("Come and visit the most beautiful view.")

    }
}
```

<img alt="image and text with title modifications" src="/lesson-3/image-assets/image-text-with-modifiers.png" style="width:140px">

-----

### Chapter 5: Building the Ratings

What we now want to do is add the ratings to the right of the title text. To do this, we are going to use the `Horizontal Stack (HStack)`.

-----

### Chapter 6: SwiftUI HStack

What we are going to do is add the element `HStack` just after the image and before the title text. We are then going to move the title text to inside of the `HStack`.

Now visually, nothing has changed but what we can now begin to do is add the star elements beside the text using our HStack.

To get these star elements, Apple provides us with thousands of pre-installed icons called `FS Symbols` that we can use inside of our apps. To get access to the names of these icons, you can install SF Symbols from [here](https://developer.apple.com/sf-symbols/).

To use these icons, we need to add an image element but instead of using the name of an image from the asset library, we are going to specify the system name of the icon we wish to use `image(systemName: "star")`.

Most of these symbols come with an outline version as well as a filled version. To create our 4.5 stars, we are going to place 4 filled stars one line after another and then we are going to add one half filled star like this:
```
import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack (alignment: .leading, spacing: 20.0) {
            Image("fields")
                .resizable()
                .aspectRatio((contentMode: .fit)
                .cornerRadius(15)

            HStack {
                Text("Fields")
                    .font(.title)
                    .fontWeight(.bold)

                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.leadinghalf.filled")

            }

            Text("Fields")
                .font(.title)
                .fontWeight(.bold)

            Text("Come and visit the most beautiful view.")

    }
}
```

<img alt="four and a half stars added" src="/lesson-3/image-assets/four-half-stars.png" style="width:140px">

-----

### Chapter 7: SwiftUI Spacer

Currently the stars are pushed to the left. This is because the HStack is only as wide as the elements inside of it and we have the alignment modifier on the VStack. To fix this, we are going to add an element called a `Spacer`. This element takes up as much room as it can. For example, if you place a spacer between two elements, the two elements will be pushed to the edges and the space in the middle will be taken up by the spacer.

This is great for evenly modifying the space between elements because we can add a spacer before, in between, and after the elements to evenly centre the elements. To do this, it does is divides the remaining space by the amount of spacers you have. 

For this example, we are just going to keep the spacer in the centre like this:
```
import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack (alignment: .leading, spacing: 20.0) {
            Image("fields")
                .resizable()
                .aspectRatio((contentMode: .fit)
                .cornerRadius(15)

            HStack {
                Text("Fields")
                    .font(.title)
                    .fontWeight(.bold)

                Spacer()

                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.leadinghalf.filled")

            }
            Text("Come and visit the most beautiful view.")

    }
}
```

<img alt="with middle spacing" src="/lesson-3/image-assets/four-half-stars-spacing.png" style="width:140px">

Now we want to add some text below the starts to specify how many reviews have been left. To do this, we are going to nest another VStack inside of the HStack that puts the stars at the top and the text just below. The issue we run into is because the stars are now inside of a HStack, they now stack vertically, so we now need to add another HStack inside of the VStack we just made so that the stars can still be laid out horizontally.
```
import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack (alignment: .leading, spacing: 20.0) {
            Image("fields")
                .resizable()
                .aspectRatio((contentMode: .fit)
                .cornerRadius(15)

            HStack {
                Text("Fields")
                    .font(.title)
                    .fontWeight(.bold)

                Spacer()

                VStack {
                    HStack {
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.leadinghalf.filled")
                    }
                    Text("Reviews 361")
                }
            }

            Text("Come and visit the most beautiful view.")

    }
}
```

<img alt="Text with reviews" src="/lesson-3/image-assets/reviews.png" style="width:140px">

Now all we need to do for the stars and text is change the colour orange and make them a little smaller. To do this, we are going to use the modifier `.foregroundColor(.orange)` for the colour and then we are going to use the modifier `.font(.caption)` to make them a little smaller.

What we can do is instead of adding these modifiers to each star element and the text, we can add the modifier to the VStack where they are all contained and it will apply all the modifiers to all, like this:
```
import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack (alignment: .leading, spacing: 20.0) {
            Image("fields")
                .resizable()
                .aspectRatio((contentMode: .fit)
                .cornerRadius(15)

            HStack {
                Text("Fields")
                    .font(.title)
                    .fontWeight(.bold)

                Spacer()

                VStack {
                    HStack {
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.leadinghalf.filled")
                    }
                    Text("Reviews 361")
                }
                .foregroundColor(.orange)
                .font(.caption)
            }

            Text("Come and visit the most beautiful view.")

    }
}
```

<img alt="orange stars and text" src="/lesson-3/image-assets/orange-reviews.png" style="width:140px">

-----

### Chapter 8: Building the Icon Area

Lets now add some icons in the bottom right hand side of what will be the card. First we need a HStack so that the elements are side by side, then we need to add the two icons inside of the HStack using the image element like before and then, we are going to use a spacer before the elements to push everything to the right hand side. Finally, we are going to set the colour to grey and make them a little smaller using the `.caption` modifier:
```
import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack (alignment: .leading, spacing: 20.0) {
            Image("fields")
                .resizable()
                .aspectRatio((contentMode: .fit)
                .cornerRadius(15)

            HStack {
                Text("Fields")
                    .font(.title)
                    .fontWeight(.bold)

                Spacer()

                VStack {
                    HStack {
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.leadinghalf.filled")
                    }
                    Text("Reviews 361")
                }
                .foregroundColor(.orange)
                .font(.caption)
            }

            Text("Come and visit the most beautiful view.")

            HStack {
                spacer()
                Image(systemName: "fork.knife")
                Image(systemName: "binoculars.fill")
            }
            .foregroundColor(.grey)
            .font(.caption)
    }
}
```

-----

### Chapter 9: Building the Card Background

Lets now look at building the card that all the current elements we have created can go in. To make this a little easier, we can collapse our current code to make it easier to visualise. To do this, place your cursor inside on the root VStack and go to `editor` in the top toolbar and select `code folding -> fold`.

Now that the code has collapsed into `(...)`, we can now take a look at creating the card for it to go in. To do this, we are going to add the `.background(Rectangle())` modifier the VStack with a `rectangle()` element. We are also going to set the colour to white using `.foregroundColor(color: white)`. We are also going to add a shadow to the card using the `.shadow(radius: 15)` modifier. Finally, we are going to round the corners of the card to give it a smoother look using the `.cornerRadius(15)`. It is important that we place this before the shadow otherwise the shadow does not work.

To create some room around the card, we are going to use the `padding()` element to create padding all the way around the card. What about padding inside of the card? Well, we can add another `padding()` element before the background element.
```
import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack (alignment: .leading, spacing: 20.0) {...}
        .padding()
        .background(Rectangle()
            .foregroundColor(.white)
            .cornerRadius(15)
            .shadow(radius: 15))
        .padding()

    }
}
```

-----

### Chapter 10: Build the View Background

What we are going to do now is add a background to the entire view. To do this, we are going to use a `ZStack (Depth Stack)`. First, we will use the `colour()` element and then place the VStack we have been editing after to overlay it over the background.

<img alt="Final" src="/lesson-3/image-assets/final.png" style="width:140px">

-----



