## 📱 Introduction to Xcode

Today we are going to look more around Xcode and the its interface.

### Details on starting a new project

When starting a new project, you are given lots of diffrent templates and platforms to choose from. For now, we will continue with IOS apps. Once you select this option, the follwing box will apear:

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
- **Dubug area**: Bottom part of the screen

<img alt="Xcode main page" src="">

#### Navigator area 

Here is where you will find your `file explorer` which contains the files and assets that make up your app.


#### Editor area

This is where you can edit your code for your project. You will notice as you change between files in the file navigator, this area changes to display the file. For example, when looking at the `view`, you will see half code and half preview. But when you click on the `asset` folder, you are displayed all the assets within the project.

Along the top of the editor area is also a breadcrum of the current directory and file. This allows you to locate your current position but to also swap between files much easier.


#### Inspector area/Utility area

This area is used to configure the current element you have selected allowing for fine and detailed adjustments. This area also has its own toolbar which contains many useful shortcuts such as the help tab that displays information and guids on the current element you have selected. 
There is also the identity tab that displays where this element is being used and stored.


As you will notice, there is a cascading effect going on where if you change something on the left side of the screen (changing file for example) then the editor area changes in which changes the utility area.























