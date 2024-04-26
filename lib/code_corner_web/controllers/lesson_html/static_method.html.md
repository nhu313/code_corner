# Method

```java
public static void main(String[] args) {

}
```

Executable code generally lives inside a method. A class can have multiple methods. A method has the following:
<ol class="ordered-list">
<li><b>access modifier</b> <code class="inline">public</code> - defines the visibility of the method (who can use this method). For now, use public for all methods.</li>
<li><b>static</b> - this is a keyword. This is optional. More on this keyword on the Object lesson.</li>
<li><b>return type</b> <code class="inline">void</code> - what type of data does this method returns. <code class="inline">void</code> means this method doesn’t return anything.</li>
<li><b>method name</b> <code class="inline">main</code> - similar to variable, method name can be anything in one text. By convention, it should starts with lower case. Each word after is capitalized. For example: <code class="inline">public static void printGreeting</code>.</li>
<li><b>arguments/inputs</b> <code class="inline">String[] args</code>each method can have zero, one, or more inputs, also called arguments. The main method has one input. It is an array of String, which means it has many String. Don’t worry about array at this moment.</li>
</ol>

Again, a class method signature looks like this:

<img src="/images/method.png" width="400">


Let’s create another method named `cafeName` which returns a String and takes no arguments/inputs.

```java
public static String cafeName() {

}
```

### Return Type

A method must declare a return type to let the caller knows the output data type. If there is no return, `void` is used, like the main method. This is a valid method

```java
public static void main(String[] args) {

}
```

This method is not valid because it specify the return type is a String, yet the code does not return anything.

```java
public static String cafeName() {
  // note no return statement here
}
```

To make it valid, use the keyword `return` with the value to return.

```java
public static String cafeName() {
  return "Java Cafe";
}
```

Similarly, a method with a return type double is declared as followed:

```java
public static double subtotal() {
  return 0.0;
}
```

Let’s practice create a method for an order:

1. Create a method called `name` which will return a String with the value `Riley`.
2. Create a method called `price` which will return a double with the value 1.1.
3. Create a method called `quantity` which will return an int with the value 1.
4. Create a method called `serverName` which will return a String value `James Smith` .
5. Create a method called `total` which will return a double with the value `0.0`.
