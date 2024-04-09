# Variables

A variable is a name given to a value. We use a variable when we don't know what the input is going to be. For example, a customer name for the order is going to change depending on the customer, therefore, we need a way to refer to it in the system. We can use a variable to do so. A variable is also used when we need to refer to it multiple times, like the receipt total. To declare a variable, you need:

<ol class="ordered-list">
<li>Type</li>
<li>Variable name</li>
<li>Value</li>
<li>semicolon (;)</li>
</ol>

<br />
<br />

For example, here’s how to declare or create a variable named `quantity` with the value of `1`:

<div class="lesson-image">
  <img src="/images/variable.png" width="300px">
  <p>Figure 1: Declare a variable in Java</p>
</div>

Here’s how to declare a variable named `price` with the value of `3.75`.

```java
double price = 3.75;
```
<br />
### Let’s practice!

1. Declare/Create a variable name total with the value of 23.87.

    `double total = 23.87;`

2. Declare/Create a variable name table with the value of 6.

    `int table = 6;`

3. Declare/Create a variable name year with the value of 204

    `int year = 2024;`

4. Declare/Create a variable name tax with the value 1.37

    `double tax = 1.37;`


## Variable without a value

Sometimes the variable value is unknown because it needs the user input. In that case, the variable can be declared without a valude with:
<ol class="ordered-list">
  <li>Type</li>
  <li>Variable name</li>
  <li>semicolon (;)</li>
</ol>

For example, this is how to declare a variable of type int named `quantity` without a value:

```java
int quantity;
```

Or like above, if the price is unknown, it can be declared with:

```java
double price;
```

### Let’s practice:

1. Declare a variable type boolean with the name `paid` to indicate if a table paid their tab.
2. Declare a variable named `initial` to indicate the server first name initial (one character).
3. Declare a variable named `count` to indicate the number of customer served.
4. Declare a variable named `check` of the type integer.

## Updating a variable

To update a variable, simply set it to a new value.

```java
int total = 0;
total = 3.75; // set total to 3.75
```

The variable can reference itself. For example:

```
int total;
total = 3.75; // set total to 3.75
total = total + 8; // update total to previous value (3.75) + 8, total is 11.75
total = total + 3.25; // update total to previous value (11.75) + 3.25, total is 15.0
```

Let’s practice:

1. Given the code below, update the count to 2.

    ```java
    int count = 1;
    //answer
    count = 2;
    count = count + 1;
    ```

2. Given the code below, update the total to equal to subtotal plus tax.

```java
double total;
double subtotal = 22.50;
double tax = 1.37;
//answer
total = subtotal + tax;
```

1. Given the code below, update the payment (for each person) to equal to the total / 3.

```java
double payment;
double total = 23.87;

//answer
total = payment/3;
```

1. Given the code below, update the total to equal to subtotal.

```java
int subtotal = 22;
int total = 25;

total = subtotal;
```

### Redeclaring a variable

You can’t! Once a variable is declared, it can't be redeclared. Nor can another variable reuse the name.

```java
int x = 16;
int x = 100; // ERROR!
double x = 1.1; // ERROR!
```

If you need to update the value, don’t put the type at the beginning.

```
int total = 22;
total = 23;
```

## Naming

Variable name should start with lower case. Each word after the first word should be capitalized with no space in between. For example, if you want to have a variable to store the number of customer, you can name the variable as `int customerCount`