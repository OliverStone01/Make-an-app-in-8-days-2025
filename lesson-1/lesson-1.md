## How to make an app - Leason 1

### Chapter 1 - The App store process

Xcode is the IDE (Intergrated Development Enviroment) we will be using to create our apps. We will be using a language called `Swift` which is the native Apple programming language. We will also be using `SwiftUI` which is a UI framework that makes it easier to build apps quicker for all Apple platforms.

With Xcode, we can make apps for:
- IOS
- iPadOS
- tvOS
- watchOS
- macOS
- visionOS

To distribute the app, you can use Apples App Store. To do this, you need to joing the Apple Developer Program. Once enrolled, you get access to:
- App Store Connect - where you create your app listing.
- TestFlight - allows you to give your app to bug testers for testing.
- Developer Portal - allows you to codesign your app (good for security).
- Access to beta software

When you are ready to upload your app, you will export it from Xcode and upload it to the `App Store Connect` where the certification team at Apple will review your app and report any changes that need to be made. Once approved, your app will then be live in the app store.

You don't have to join the Apple Developer Program if you only want to build apps for your self.

-----

### Chapter 2 - Downloading Xcode

To get Xcode, you can download it from the app store on your devide. Swift and SwiftUI all come with Xcode.

[Link to Xcode](https://apps.apple.com/gb/app/xcode/id497799835?mt=12)

-----

### Chapter 3 - Start a New Xcode Project

<img alt="Xcode start" src="/lesson-1/image-assets/xcode-start.png" style="width:250px">

To start a new Xcode project, you can click `Create new project` or you can go to the toolbar at the top on the screen and do `File -> New -> Project...`. 

After that, a window will apear where you can choose which operating system you want to build your app for.

<img alt="system choices" src="/lesson-1/image-assets/system-choice.png" style="width:250px">

For this lesson, we will choose `IOS` and `App`.

Next, you will be asked to provide information such as the name of your app, your organisation, etc,. 

<img alt="app information" src="/lesson-1/image-assets/app-info.png" style="width:250px">

We will come back to this is lesson 2. For now, we will call this app `L1 Demo`. We will use `SwiftUI` for our interface and `Swift` for our programming language.

For now, we will uncheck `Use Core Data` and `Include Tests`. We will look more at these in future lessons.

And finally, we will need to choose a place to store our project. Here you can also create a `git repo` for our project that is a great place to backup your project. For now, we will leave this unchecked.

-----

### Chapter 4 - Add images to the App Project 

When your project loads, you will be the main code area in the center, a preview of the app on the right, to the far left are folders where the files and assets of the apps can be found.

<img alt="Xcode main area" src="/lesson-1/image-assets/xcode-main-area.png" style="width:250px">

To add an image to the project, we can take an image and place it inside of the `assets` library.

<img alt="asset area" src="/lesson-1/image-assets/asset-area.png" style="width:250px">

If you wish to rename the image, you can click on the current file name in the image list and press enter to be given the opertunity to rename. 

-----

### Chapter 5 - Customising your App screen

Now, click on `Content view` in the file exlorer on the left to go back to edit the view of the website. In the main section of code, we can place our code in the variable `body`:
```
import SwiftUI

struct ContentView: View {
    var body: some View {

        // Your code here

    }
}

#Preview {
    ContentView()
}
```

To make things easier to begin with, we are going to use the `element library` located in the top right of the editor. Here we can search for the element `image` inside of the `views library` and drag it into the `body`.
```
struct ContentView: View {
    var body: some View {
        
        Image("Image Name")
        
    }
}
```

Once placed, you must add the name of the image in the asset folder. Like such:
```
struct ContentView: View {
    var body: some View {
        
        Image("field")
        
    }
}
```
<img alt="raw image" src="/lesson-1/image-assets/raw-image.png" style="width:120px">

As you can see, the sizing and aspect ratio of the image is not quite right. What we can do is customise the image using the modifiers found in the `Modifier library`.

We are going to use four modifiers on this image.
- `.resizable()`: This tells the system that the image is able to be resizsed.
- `.cornerRadius(10)`: This rounds the corners of the image.
- `.aspectRatio(contentMode: .fit)`: This fixes the aspect ratio of the image and making it fit to the screen.
- `.padding(.all)`: adds a padding around the entire image.000

To add the modifier to the image, you can drag the modifier under the image like such:
```
struct ContentView: View {
    var body: some View {
        
        Image("field")
          .resizable()
          .cornerRadius(10)
          .aspectRatio(contentMode: .fit)
          .padding(.all)
        
    }
}
```

<img alt="image after adjustments" src="/lesson-1/image-assets/image-with-adjustments.png" style="width:120px">

What you will also notice is that when you click on the image tags, the right side of Xcode is the `inspector` where you are able to make fine adjustments to the elements.

Now lets add some text below the image using the `text("Placeholder")` element.
```
struct ContentView: View {
    var body: some View {
        
        Image("field")
          .resizable()
          .cornerRadius(10)
          .aspectRatio(contentMode: .fit)
          .padding(.all)

        text("Placeholder")
    }
}
```

<img alt="Image with text" src="/lesson-1/image-assets/image-with-text.png" style="width:120px">

We are going to use a `vertical stack` to stack the two elements on top of each other. To do this, we will plact the vertical stack and then place the current elements inside of the stack:
```
struct ContentView: View {
    var body: some View {

        VStack {
          Image("field")
            .resizable()
            .cornerRadius(10)
            .aspectRatio(contentMode: .fit)
            .padding(.all)

          text("Placeholder")
        }
    }
}
```

Now lets change the text and how it looks by adding some modifiers to the elements:
- `.font(.largeTitle)`: Changes the type of font and style
- `.fontWeight(.semiBold)`: Changes the weight of the text
```
struct ContentView: View {
    var body: some View {

        VStack {
          Image("field")
            .resizable()
            .cornerRadius(10)
            .aspectRatio(contentMode: .fit)
            .padding(.all)

          text("Placeholder")
            .font(.largeTitle)
            .fontWeight(.semibold)
        }
    }
}
```

<img alt="Edited text" src="/lesson-1/image-assets/edited-text.png" style="width:120px">


Lets now look at changing the background colour. To do this, we can add a `colour` element to the screen. We need to place this element at the top of the view. The issue is when we do this, the colour is placed over all elements in the view.

To prevent this, we can use a `zstack`. A `zstack` is a depth stack that allows you to stack elements on top of each other. In this example, we are going to stack all our other elements on top of the colour element so that it has the effect of a background.
```
struct ContentView: View {
    var body: some View {

        ZStack {

            Color(red: 0.8, green: 0.8, blue: 0.8)

            VStack {
              Image("field")
                .resizable()
                .cornerRadius(10)
                .aspectRatio(contentMode: .fit)
                .padding(.all)

              text("Placeholder")
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
    }
}
```

<img alt="Background with safe areas" src="/lesson-1/image-assets/background-with-safeareas.png" style="width:120px">

There are some colour preset colours you can use. To do this remove the RGB elements and type `.black` for example.

The next issue is you can see white space at the top and bottom of the device where the background is not filling the screen. These areas are known as `safe areas`. This is typically where the time, cell service, battery, and WI-FI connectivity icons are and the bottom is where you swipe up to back to the home screen on the device.

To allow the background to spread to these areas, we need to add a modifier to the background known as `.ignoreSafeArea()`.
```
struct ContentView: View {
    var body: some View {

        ZStack {

            Color(red: 0.8, green: 0.8, blue: 0.8)
                .ignoreSafeArea()

            VStack {
              Image("field")
                .resizable()
                .cornerRadius(10)
                .aspectRatio(contentMode: .fit)
                .padding(.all)

              text("Placeholder")
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
    }
}
```

<img alt="Background with no safe area" src="/lesson-1/image-assets/background-adjusted.png" style="width:120px">

-----

### Chapter 6 - Launch your App

Lets first run this app inside of the IOS Simulator. To do this, you can select the device you want to test by choosing from the drop down menu at the top center of the screen:

<img alt="Choosing device" src="/lesson-1/image-assets/choosing-device.png" style="width:300px">

From there, we can press the run button in the top left corner of Xcode. Once this loads, you will have a virtual iphone running on your device with your app installed so you can test diffrent features like `shake`, change rotation, test screenshots, etc,.

-----

