Let’s write our first program. Create a new file named `[JavaCafeSystem.java](http://JavaCafeSystem.java)` and copy this code into the file.

```java
//JavaCafeSystem.java
public class JavaCafeSystem {

    public static void main(String[] args) {
        System.out.println("Welcome to Java Cafe!");
    }
}
```

This code will display `Welcome to Java Cafe!`. Test it out [here](https://replit.com/@nhu313/SimpleClass#src/main/java/JavaCafeSystem.java). Let’s dissect this code.

## **Class**

First, let’s talk about the class. Here is a class named `JavaCafeSystem`

```java
public class JavaCafeSystem {

}
```

In Java, code must be written inside a class. Think of a class as a container for code. It it a way to group code that are related together in a file. Classes are usually nouns such as `System` or `Map` . To create a class, you need the following:

- **Access modifier** `public` - also call accessor. This defines the visibility of the class which means which file can see the code in this class. The options are: public, protected, or default (none). For now, public will be used for all the code created in this class.
- **`class`** - this is a keyword. In Java, keywords have special meanings. This is required to declare a class. Java keyword cannot be used for variable name.
- **class name** `JavaCafeSystem` - this is the name of the class. It can be named anything that is not a Java keyword (e.g. class, int). By convention, each word in the name is capitalized. This naming convention is called camel case.
- `{}` - open and close curly braces. Place the actual code inside these curly braces.

To iterate, a class signature looks like this:

```java
[access modifier] class [class name] {

}
```

Let’s practice:

1. Create a class called Server.
2. Create a class called Menu.
3. Create a class called Order.
4. Create a class called Drink.
5. Create a class called Food.
