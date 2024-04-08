<h1>Data Types</h1>

<p>Data types are the basic building blocks for Java. Similar to Lego bricks, data types vary in size which determine the amount of storage it needs. By combining different data types, we can develop systems like a small cafe management tool or a complex system like Google search or OpenAI.</p>

<p>Computer stores data in <a href="https://en.wikipedia.org/wiki/Binary_number">binaries</a> which are just 0s and 1s. It needs a way to specify that this data is a number and this data is a letter. Consider this receipt as an illustration. What type of data is needed to saved this information?</p>

<div class="lesson-image">
  <img src="/images/receipt.png" width="300px">
  <p>Figure 1: Sample receipt</p>
</div>


<h2>Primitive data types</h2>
In Java, there are 8 primitive data types, divided into 3 categories: integers, decimals, letters, and boolean. Each of these types requires a specific amount of storage space to store the information. The term "byte" denotes the amount of space needed for data storage.
<br />
### Integers

An integer is a whole numbers without any fractional part. Integers can be positive, negative, or zero. There are four integer types in Java: byte, short, int, and long. The table below shows the range of the integer each type represent. Historically, storage was important due to the costliness of storage space. However, storage is no longer a significant constraints, therefore most developers uses `int` for small number and `long` for larger numerical values.

| Type | Storage | Range (Inclusive) | Example |
| --- | --- | --- | --- |
| byte | 1 byte | -128 to 127 | byte b = 127; |
| short | 2 bytes | –32,768 to 32,767 | short s = 30000; short s1 = -32_000; |
| **int** | 4 bytes | –2,147,483,648 to 2,147,483, 647 (just over 2 billion) | int i = 20; |
| **long** | 8 bytes | –9,223,372,036,854,775,808 to 9,223,372,036,854,775,807 | long l = 100; long l1 = 100L; long l2 = 100l; |

In terms of how the system will store the data of the receipt, the system can use `int` to denote the quantity of each line item and the table number. Similarly, `long` is more suitable for the check number as this number may get get big.
<br />

### Decimals

Numbers with fractions can be represented with float or double.

| Type | Storage requirements | Range (Inclusive) |
| --- | --- | --- |
| float | 4 bytes | Approximately ±3.40282347E+38F (6–7 significant decimal digits) |
| **double** | 8 bytes | Approximately ±1.79769313486231570E+308 (15 significant decimal digits) |

Developers generally uses `double` because it is more precise than float. Within the context of the receipt of our application, we can use double to represent money. However, in real life, `BigDecimal` is a class used to represent money due to rounding errors with double. We will talk about `class` in a later module.
<br />

### char Type

The char type is a single character, such as letters, digits, punctuation marks, or special symbols. The term `char` is short for `character`. It is enclosed in single quotes. It takes up 2 bytes.

```
char a = 'a';
char capA = 'A';
char semi = ';';
char num = '8';
```

Note `'8'` is NOT the same as the number `8` without the quotes. `'8'` with quote is a char and `8` is an int.

Within the context of the receipt, characters can combine together to make up long text such as the drink name (Cold Brew) or the cashier name (James Smith).
<br />

### boolean Type

A boolean represents logical values. It can only be `true` or `false`. Booleans are fundamental in the control flow of the program, as they determine the outcome of conditional statements and loops.

```
boolean t = true;
boolean f = false;
```

It can be used to store the result of a comparison as these produce either a true or false result.

```
boolean a = 1 > 0; // true
boolean b = 1 > 5; // false
boolean c = 1 == 1; // true
boolean d = 1 >= 5; // false
boolean e = 1 <= 5; // true
boolean f = 8 == '8'; // false
```

For example, in the cafe system, a boolean can be used to indicate if a table paid or not because there are only two state paid (true) and not paid (false).

<br />

## Summary
Data type is a way for the computer to understand what the data represent (e.g. number, character). It also lets the computer knows how much storage to allocate for the data. For whole number, int and long is used most often. For decimal, double is used for better precision. Char is used for text. Boolean is used for logical values (true/false). Figure 2 marked a few data types that can be used to represent the information needed for a receipt.

<div class="lesson-image">
  <img src="/images/receipt_data.png" width="300px">
  <p>Figure 2: Sample receipt with some data mark</p>
</div>


<div class="lesson-actions">
  <button class="lesson-next">
  <a href="/lessons/variables">Next: Variables</a>
  </button>
</div>
