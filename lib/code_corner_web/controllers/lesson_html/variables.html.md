A variable is a name given to a value. For example, in the context of the line item in our receipt, we need to named the values.

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/523aebaf-e480-4115-9e2f-18850413edab/2d7f2808-53ff-4bdc-951d-f4f9036557e2/Untitled.png)

To declare a variable, you need three things:

1. Type
2. Variable name
3. Value

For example, for the line item one for the drip coffee, the quantity is 1 and the price is 3.75. Here’s how to declare/create a variable named quantity with the value of 1:

```python
// 1. type - int
// 2. name - quantity
// 3. value - 1

int quantity = 1;
```

For price, the data type is a double. Here’s how to declare a variable named price with the value of 3.75.

```python
double price = 3.75
```

Let’s practice!

1. Declare/Create a variable name total with the value of 23.87.

    `double total = 23.87`

2. Declare/Create a variable name table with the value of 6.

    `int table = 6`

3. Declare/Create a variable name year with the value of 204

    `int year = 2024`

4. Declare/Create a variable name tax with the value 1.37

    `double tax = 1.37`


# Variable without a value

Sometimes we don’t know what the value is because we need to calculate it or ask the user for it. In that case, we can declare a variable without a value. To declare a variable without a value, you need two things:

1. Type
2. Variable name

```python
int total;
```

Let’s practice:

1. Declare a variable type boolean with the name paid to indicate if a table paid their tab.
2. Declare a variable named initial to indicate the server first name initial (one character).
3. Declare a variable named count to indicate the number of customer served.
4. Declare a variable named check of the type integer.

# Updating a variable

To update a variable,

```python
int total;
total = 3.75; // set total to 3.75
total = total + 8; // update total to previous value (3.75) + 8, total is 11.75
total = total + 3.25; // update total to previous value (11.75) + 3.25, total is 15.0
```

Let’s practice:

1. Given the code below, update the count to 2.

    ```python
    int count = 1;
    //answer
    count = 2;
    count = count + 1;
    ```

2. Given the code below, update the total to equal to subtotal plus tax.

```python
double total;
double subtotal = 22.50;
double tax = 1.37;
//answer
total = subtotal + tax;
```

1. Given the code below, update the payment (for each person) to equal to the total / 3.

```python
double payment;
double total = 23.87;

//answer
total = payment/3;
```

1. Given the code below, update the total o equal to subtotal.

```python
int subtotal = 22;
int total = 25;

total = subtotal;
```

### **Redeclaring a variable**

You can’t! Once you declare a variable, you can’t change the type. Nor can you redeclare the variable with the same name.

`int x = 16;
int x = 100; // ERROR!
double x = 1.1; // ERROR!`

If you need to update the value, don’t put the type at the beginning.

`int total = 22;
total = 23;`

## **Naming**

Variable name should start with lower case. Each word after the first word should be capitalized with no space in between. For example, if you want to have a variable to store the number of customer, you can name the variable as `int customerCount`
