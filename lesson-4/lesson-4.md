## ⚔️ Build a War Card Game App

In todays lesson, we are going to build the UI for the app and in the next lesson, we are going to build the logic and the code for the app.

-----

### Chapter 1: Start a New Xcode Project

We are going to select app form the IOS templates and call our app `War Card Game`. 


-----

### Chapter 2: Add Image Assets

Download the images from the description of the video to get the image assets. Once downloaded, you can drag all 4 folders into xcode and it will respect the folders and keep them in the current order. The images are also `SVG (Scalable Vector Graphics)` so that the images can be resized without causing any quality loss.


-----

### Chapter 3: UI Challenge

The lesson now requests we try recreate the UI by ourselves. Here is what I did:
```
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card2")
                    Spacer()
                }
                
                Spacer()
                Image("button")
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .foregroundColor(.white)
                            .padding(.bottom)
                        Text("0")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .foregroundColor(.white)
                            .padding(.bottom)
                        Text("0")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    
                    Spacer()
                }
                Spacer()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
```

<img alt="My UI" src="" style="">


-----

### Chapter 4: Building it Together

Im really happy with the outcome as my code in the previous chapter is around 95% accurate! The only changes I need to make are:
- Change white text modifier to the VStack instead of each element
- Change the font type used on the text and number elements
- Change the padding spacing from 20 to 10.

```
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card2")
                    Spacer()
                }
                
                Spacer()
                Image("button")
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
```

<img alt="Final UI" src="" style="">

-----
