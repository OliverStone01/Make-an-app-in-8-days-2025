## 📱 Swift functions

In this lesson we are going to use groups of code statements known as functions.


### Chapter 1: What is a Function

A function allows you to pre-write a process (some code statements) to execute when the name of the function is called. To declare a function we are going to use:
```
func functionName(){

}
```

Inside of the curly brackets is where the code that you want to execute goes. For example, we can take the code from the last lesson of creating a variable and printing the value of that variable and place them inside of a variable to run when called:
```
func sayHello(){
    var greeting = "Hello, Playground"
    print(greeting)
}
```

Now everytime we call `sayHello()`, the console will print `Hello, Playground`. 


-----

### Chapter 3: Functions Inputs and Outputs

Functions can be even more useful by accepting an input using:
```
func sayHello(m:String){

}
```

The `m` in the above statement becomes a variable where you can then use `m` in the code in the function for where you want that input to be used. As you are running your code, Swift will then use the value of `m` which is your input. This is known as a parameter. 

Here is an example of writing a function using the parameter:
```
func sayHello(m:String){
    print(m)
}
```

To now call the function, we do:
```
sayHello(m: "I can code functions!")
```

You can also have multiple parameters for a function like this:
```
func doAdd(a:Int, b:Int){
    var sum = a + b
    print(sum)
}
```

Now to call the function, lets look at this example:
```
doAdd(a: 2, b: 3)
```


You can also get an output from a function like this:
```
func doAdd() -> Int {
    return 123
}
```

Here is a more complex example:
```
func doAdd(a:Int, b:Int) -> Int {
    var sum = a + b
    return sum
}
```

To call this function, we need to declare a variable or constant to store the return value of the function. Like this:
```
let result = doAdd(a: 2, b: 3)
```

Now `result` will store the returned value.


-----

### Chapter 4: Function Argument Labels

What we can do to make coding projects like this easier is to use argument labels to give more description to the input when calling the function without the need to change the variable inside the function. Like this:
```
func doAdd(firstNum a:Int, secondNum b:Int) -> Int {
    var sum = a + b
    return sum
}
```

Now when we call the function, it will look like this:
```
let result = doAdd(firstNum: 3, secondNum: 5)
print result
```

If you don't want to use labels at all when calling the function, you can replace the labels with underscores `_`:
```
func doAdd(_ a:Int, _ b:Int) -> Int {
    var sum = a + b
    return sum
}
```

Now when calling the function, it will look like this:
```
let result = doAdd(3, 5)
print result
```


-----

### Chapter 6: Function Signatures

A function signature allows you to call your functions above where your functions are laid out. For example, you can write your functions out of the way at the bottom of your project and then you call it at the start of your code, you will get an error unless you tell Swift and Xcode at the very top of your project that a function is coming and read the rest of the code to execute this function:
```
doAdd(a: Int, b: Int)


// Your code calling doAdd


func doAdd...{
```

-----
