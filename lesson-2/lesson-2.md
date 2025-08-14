## 📱 Introduction to Xcode

Today we are going to look more around Xcode and the its interface.

### Details on starting a new project

When starting a new project, you are given lots of different templates and platforms to choose from. For now, we will continue with IOS apps. Once you select this option, the following box will appear:

<img alt="Options panel" src="">

- **Product name**: name of your app
- **Team**: How you code sign your app
- **Organisation**: Your organisations name.
- **Bundle Identifier**: Unique identifier your app.
- **Interface**: The language you are going to use to build your UI.
- **Language**: The language you are going to use to build your app.
- **Use core data**: To have a local database on the device
- **Include tests**: Used to automate test cases.

After you fill out this form, you are then asked to choose a location to store your project. 

- **Source-control**: Creates a Git creating snapshots of your app so that you can go back to previous versions of your app.

Now you can press create!

-----

### Areas of Xcode

There are five main areas of Xcode:

- **Navigator area**: left side of the screen
- **Editor area**: Large middle area of the screen
- **Inspector area**: Right side of the screen
- **Toolbar**: Top of the screen
- **Debug area**: Bottom part of the screen

<img alt="Xcode main page" src="">

#### Navigator area 

Here is where you will find your `file explorer` which contains the files and assets that make up your app.


#### Editor area

This is where you can edit your code for your project. You will notice as you change between files in the file navigator, this area changes to display the file. For example, when looking at the `view`, you will see half code and half preview. But when you click on the `asset` folder, you are displayed all the assets within the project.

Along the top of the editor area is also a breadcrumb of the current directory and file. This allows you to locate your current position but to also swap between files much easier.


#### Inspector area/Utility area

This area is used to configure the current element you have selected allowing for fine and detailed adjustments. This area also has its own toolbar which contains many useful shortcuts such as the help tab that displays information and guides on the current element you have selected. 
There is also the identity tab that displays where this element is being used and stored.


As you will notice, there is a cascading effect going on where if you change something on the left side of the screen (changing file for example) then the editor area changes in which changes the utility area.


-----

### The Xcode toolbar

The left most button hides the navigator area incase you need more space. The button on the far right does the same for the inspectors area.

Second from the left is the `run` button that allows you to run your app in a simulated environment.

In the centre is where you are able to choose which device your app is simulated on. If you plug in your own device to your computer, you will also see an option to use that device.

To the right of this is a status bar that tells you what is happening behind the scenes.

Next is a button that allows you to run the test cases that we could have created when initialising the project. These tests are run of the cloud. 

Next is the library button that contains elements and modifiers that you can drag and drop onto the view.


-----

### What is an Xcode project?

Looking at the navigator area, lets take a closer look at the files that make up your project. At the top is the root node of your project. This is where you are able to configure your applications name and IOS versions. This is where you can also configure in-app purchases. 

After that, there is a folder that contains the files to your application. The first is the entry point which initialises your app and begins to display the `ContentView` file. This file is where the first page in your app. 

Next is your asset library, Here is where all your image assets, colours, and your app icon is kept.

Finally is preview content. This is where you can submit images or other assets for testing in the preview section. 


-----

### The IOS Simulator

What you can do is select the device you want to simulate from the centre on the tool bar and press the start button to begin simulating your app. You can simulate test and other features. 


-----

### The preview area 

Here is where you can preview your app as you are building it. As you add elements and modifiers, you will see your app being updated in real time. You can also test `dark` mode and `light` mode options. You can also look at orientation and different font sizes.

If you are in live view, you are able to interact with some elements like buttons for example. The next option is select mode. This allows you to select items in the preview and it will highlight that element in the editor area. 


-----

### Tips for Xcode

At the top of the editor area, there are arrows beside the breadcrumb. This allows you to go back and forward to your previous location. 

To the right side of the editor area tool bar, is a button that allows you to remove the preview or add other similar features like add a mini-map that allows you to see an overview of your code.

You can look at two files at the same time in the editor area by using the furthers right button in the editor area toolbar.


-----

### The developer documentation

If you are unsure what an element does, you can go to `windows` in the top toolbar and `Developer Documentation` and search for the element in here and it will give you information about said element.

-----

