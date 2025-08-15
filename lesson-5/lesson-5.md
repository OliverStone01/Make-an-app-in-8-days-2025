## Introduction to Swift Coding

What is coding? Coding is the act of writing out code statements which represent instructions that we want the computer to do. The computer then reads the code statements and carries out the instructions. 

`Swift` is the language we will use to write these code statements. Like other languages, Swift has structure and rules that we must follow when writing Swift code statements.

The Swift code statements are then converted to `Machine Code` using a complier (Xcode). Machine code is the language that the computer can understand.

-----

Chapter 3: Xcode Playgrounds

Xcode playgrounds, which comes with Xcode, is a lightweight way for us to practice writing Swift code. To create a playground, open Xcode and then head to `File -> New -> Playground` in the toolbar at the top of your display.

A window will pop up asking you to choose a template to use:

<img alt="Template Window" src="/lesson-5/image-assets/template.png" style="width:150px">

We are going to choose `IOS` at the top, then we are going to choose blank which is the most basic template.

<img alt="Playground main" src="/lesson-5/image-assets/main.png" style="width:150px">


-----

### Chapter 4: Your First Swift Code Statement

When your playground loads, you will see the following statement already pre-written for you:
```
import UIKit

var greeting = "Hello, Playground"
```

The `UIKit` is a library provided to you by Swift that contains all pre-written code that makes up functions that you can then use to write your code.

`var` = variable. A variable is where we can store temporary data is stored in the computers memory so that we can call to it at a later date. To be able to call to these variable later, we need to assign them a name. In this example, you can see `greetings` has been set as the variable name. Now we can call to `greetings` later and get the data that is stored inside of that variable.

The data stored inside of the `greeting` variable is seen after the `=` operator which is used to set the value of a variable. In this example, the data stored in the variable is `Hello, playground`.

The computer would read this statements as `Create a variable named greeting and assign the value "Hello, Playground"`.

The formal name for this process is `Declaring a variable`


-----

### Chapter 7: Print Statements

Lets now look at how we can call to that variable to be able to print out the statement we stored inside of it. To display the statement, we are going to use a function called `print`.
```
import UIKit

var greeting = "Hello, Playground"
print(greeting)
```
To run the code you have written, use the play button in the bottom left of the playground. Once you click run, you will see a status bar at the top centre of the playground. In the bottom right, you will see a button that allows you to expand your console area. This is where you will see the output to your code.


-----

### Chapter 8: Reassign to variables

The nice thing about variables is because the information is temporary, we can change it anytime we choose. For example:
```
import UIKit

var greeting = "Hello, Playground"
greeting = "I can write Swift!"
print(greeting)
```

As you can see, you do not need to call `var` again as we do not want to create a new variable, we just want to reassign the value of `greeting`.


-----

### Chapter 9: Diffrent Types of Data

- String = Text
- int = Whole number (inlcuding negatives)
- Double = Decimal number
- Bool = Booloean (True or False)


-----

### Chapter 10: Data Type of a Variable

If you are declaring a variable with a value, Swift will detect this and set that variable type for you. But it's good practice and if you want to create a variable that currently does not have a value to declare the type of variable you want.

To do this, use a semicolon after the name of the variable and then the data type you would like to store in that variable:
```
var greeting: String = "Hello, Playground"
```

Variables can only store data of the same type that you declared when you created the variable. 


-----

### Chapter 11: Constants

Constants are similar to variables but the data is not able to be changed after it has been assigned. To declare a constant, we use the `let` keyword instead of `var`:
```
let greeting:String = "Hello, Playground"
```


-----
