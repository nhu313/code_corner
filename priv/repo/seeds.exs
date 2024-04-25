# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     CodeCorner.Repo.insert!(%CodeCorner.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

# CodeCorner.Repo.insert!(%CodeCorner.Class.Lesson{id: 1, name: "Data Types", order: 1, slug: "data_types"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 101, description: "What data type can be used for quantity (ex: 1, 5, 10)?", lesson_id: 1, group: "data_type", answer: "int;short;byte;long;"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 102, description: "What data type can be used to store tax number (ex: 0.06)?", lesson_id: 1, group: "data_type", answer: "decimal;float"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 103, description: "What data type can be used to store server name?", lesson_id: 1, group: "data_type", answer: "char;string"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 104, description: "What data type can be used to capture if a table is available or not (ex: true, false)?", lesson_id: 1, group: "data_type", answer: "boolean"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 105, description: "What data type can be used to store table number (ex: 1, 2, 3)?", lesson_id: 1, group: "data_type", answer: "int;short;byte;long;"})


# CodeCorner.Repo.insert!(%CodeCorner.Class.Lesson{id: 2, name: "Variables", order: 5, slug: "variables"})
# # simple variable
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 1, description: "Declare/Create a variable name total with the value of 23.87.", lesson_id: 2, group: "variable_simple", answer: "doubletotal=23.87"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 2, description: "Declare/Create a variable name table with the value of 6.", lesson_id: 2, group: "variable_simple", answer: "inttable=6"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 3, description: "Declare/Create a variable name year with the value of 2024", lesson_id: 2, group: "variable_simple", answer: "intyear=2024"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 4, description: "Declare/Create a variable name tax with the value 1.37", lesson_id: 2, group: "variable_simple", answer: "doubletax=1.37"})
# # no value
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 5, description: "Declare a variable type boolean with the name paid to indicate if a table paid their tab.", lesson_id: 2, group: "variable_no_value", answer: "booleanpaid"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 6, description: "Declare a variable type char named initial to indicate the server first name initial (one character).", lesson_id: 2, group: "variable_no_value", answer: "charinitial"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 7, description: "Declare a variable type int named count to indicate the number of customer served.", lesson_id: 2, group: "variable_no_value", answer: "intcount"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 8, description: "Declare a variable named check of the type integer.", lesson_id: 2, group: "variable_no_value", answer: "intcheck"})
# # update
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 9, description: "Given the code below, update the count to 2.", lesson_id: 2, group: "variable_update", answer: "count=2 count=count+1 count++ count+=1"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 10, description: "Given the code below, update the total to equal to subtotal plus tax.", lesson_id: 2, group: "variable_update", answer: "total=subtotal+tax total=tax+subtotal"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 11, description: "Given the code below, update the payment (for each person) to equal to the total / 3.", lesson_id: 2, group: "variable_update", answer: "total=payment/3"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 12, description: "Given the code below, update the total to equal to subtotal.", lesson_id: 2, group: "variable_update", answer: "total=subtotal"})

# CodeCorner.Repo.insert!(%CodeCorner.Class.Lesson{id: 3, name: "String", order: 10, slug: "string"})



# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 201, description: "Declare a String variable named drink with the value mocha", lesson_id: 3, group: "new_string", answer: "stringdrink=\"mocha\";"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 202, description: "Create a String variable named food with the value Strawberry oats", lesson_id: 3, group: "new_string", answer: "stringfood=\"strawberryoats\";"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 203, description: "Create a String variable barista named with the value Carol", lesson_id: 3, group: "new_string", answer: "stringbarista=\"carol\";"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 204, description: "Create a String variable named dessert with the value brownie", lesson_id: 3, group: "new_string", answer: "stringdessert=\"brownie\";"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 205, description: "Create a String variable named smoothie with the value sweet green", lesson_id: 3, group: "new_string", answer: "stringsmoothie=\"sweetgreen\";"})



import Ecto.Query, warn: false
# from(p in CodeCorner.Practices.Problem, where: p.id > 400) |> CodeCorner.Repo.delete_all()

# CodeCorner.Repo.insert!(%CodeCorner.Class.Lesson{id: 4, name: "Class", order: 15, slug: "class"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 401, description: "Create a class called Employee", lesson_id: 4, group: "create_class", answer: "publicclassemployee{}"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 402, description: "Create a class called Menu", lesson_id: 4, group: "create_class", answer: "publicclassmenu{}"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 403, description: "Create a class called Order", lesson_id: 4, group: "create_class", answer: "publicclassorder{}"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 404, description: "Create a class called Drink", lesson_id: 4, group: "create_class", answer: "publicclassdrink{}"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 405, description: "Create a class called Food", lesson_id: 4, group: "create_class", answer: "publicclassfood{}"})


# CodeCorner.Repo.insert!(%CodeCorner.Class.Lesson{id: 7, name: "Instance Variable", order: 17, slug: "instance_variable"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 701, description: "Create an instance variable of type String named address.", lesson_id: 7, group: "instance_variables", answer: "privatestringaddress;"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 702, description: "Create an instance variable of type int named numberOfVisit.", lesson_id: 7, group: "instance_variables", answer: "privateintnumberofvisit;"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 703, description: "Create an instance variable of type String named favoriteDrink.", lesson_id: 7, group: "instance_variables", answer: "privatestringfavoritedrink;"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 704, description: "Create an instance variable of type int named yearOfBirth.", lesson_id: 7, group: "instance_variables", answer: "privateintyearofbirth;"})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 705, description: "Create an instance variable of type boolean named active.", lesson_id: 7, group: "instance_variables", answer: "privatebooleanactive;"})



# CodeCorner.Repo.insert!(%CodeCorner.Class.Lesson{id: 5, name: "Method", order: 20, slug: "method"})
# CodeCorner.Repo.insert!(%CodeCorner.Class.Lesson{id: 6, name: "Objects", order: 25, slug: "object"})







# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 4, description: "", lesson_id: , group: "", answer: ""})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 5, description: "", lesson_id: , group: "", answer: ""})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 6, description: "", lesson_id: , group: "", answer: ""})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 7, description: "", lesson_id: , group: "", answer: ""})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 8, description: "", lesson_id: , group: "", answer: ""})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 9, description: "", lesson_id: , group: "", answer: ""})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 0, description: "", lesson_id: , group: "", answer: ""})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 1, description: "", lesson_id: , group: "", answer: ""})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 2, description: "", lesson_id: , group: "", answer: ""})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 3, description: "", lesson_id: , group: "", answer: ""})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 4, description: "", lesson_id: , group: "", answer: ""})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 5, description: "", lesson_id: , group: "", answer: ""})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 6, description: "", lesson_id: , group: "", answer: ""})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 7, description: "", lesson_id: , group: "", answer: ""})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 8, description: "", lesson_id: , group: "", answer: ""})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 9, description: "", lesson_id: , group: "", answer: ""})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 0, description: "", lesson_id: , group: "", answer: ""})
# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 1, description: "", lesson_id: , group: "", answer: ""})

# # CodeCorner.Repo.insert!(%CodeCorner.Class.Quiz{id: 1, name: "Pre Quiz"})
# post = MyRepo.get!(Post, 42)
# post =
#   post
#   |> Changeset.change(title: “New title”)
#   |> Changeset.optimistic_lock(:version)

# case MyRepo.update post do
#   {:ok, struct} -> # Updated with success
#   {:error, changeset} -> # Something went wrong
# end


quiz = CodeCorner.Repo.get!(CodeCorner.Class.Quiz, 2)
        |> Ecto.Changeset.change(slug: "post_quiz")
        |> Ecto.Changeset.optimistic_lock(:version)

CodeCorner.Repo.update!(quiz)
# CodeCorner.Repo.insert!(%CodeCorner.Class.QuizQuestion{id: 1, quiz_id: 1, answer: "int", description: "What data type is the most appropriate to store the number of students in a class?"})
# CodeCorner.Repo.insert!(%CodeCorner.Class.QuizQuestion{id: 2, quiz_id: 1, answer: "double", description: "What data type is the most appropriate to store the student's grade point average (GPA) (e.g. 3.4, 4.0)?"})
# CodeCorner.Repo.insert!(%CodeCorner.Class.QuizQuestion{id: 3, quiz_id: 1, answer: "4.0", description: "What is the value of a?"})
# CodeCorner.Repo.insert!(%CodeCorner.Class.QuizQuestion{id: 4, quiz_id: 1, answer: "x = 3, y = 6", description: "What are the values of x and y after the following code executes?"})
# CodeCorner.Repo.insert!(%CodeCorner.Class.QuizQuestion{id: 5, quiz_id: 1, answer: "printSlices(slicesPerPerson);", description: "Consider the following methods, which appear in the same class. Which of the following lines would go into /* INSERT CODE HERE */ in order to call the printSlices method?"})
# CodeCorner.Repo.insert!(%CodeCorner.Class.QuizQuestion{id: 6, quiz_id: 1, answer: "correct", description: "Consider the following class. Which of the following code segments will construct a Movie object m with a title of “Lion King” and rating of 8.0?"})
# CodeCorner.Repo.insert!(%CodeCorner.Class.QuizQuestion{id: 7, quiz_id: 1, answer: "myParty.cancelParty();", description: "Consider the following class definition. Assume that a Party object called myParty has been properly declared and initialized. Which of the following statements are valid?"})


# # CodeCorner.Repo.insert!(%CodeCorner.Class.Quiz{id: 2, name: "Post Quiz"})
# CodeCorner.Repo.insert!(%CodeCorner.Class.QuizQuestion{id: 8, quiz_id: 2, answer: "double", description: "What data type is the most appropriate to store the price of an item?"})
# CodeCorner.Repo.insert!(%CodeCorner.Class.QuizQuestion{id: 9, quiz_id: 2, answer: "int", description: "What data type is the most appropriate to store the number of employees at a store?"})
# CodeCorner.Repo.insert!(%CodeCorner.Class.QuizQuestion{id: 10, quiz_id: 2, answer: "2.0", description: "What is the value of a?"})
# CodeCorner.Repo.insert!(%CodeCorner.Class.QuizQuestion{id: 11, quiz_id: 2, answer: "x = 2, y = 4", description: "What are the values of x and y after the following code executes?"})
# CodeCorner.Repo.insert!(%CodeCorner.Class.QuizQuestion{id: 12, quiz_id: 2, answer: "printPayment(paymentPerPerson);", description: "Consider the following methods, which appear in the same class. Which of the following lines would go into /* INSERT CODE HERE */ in order to call the paymentPerPerson method?"})
# CodeCorner.Repo.insert!(%CodeCorner.Class.QuizQuestion{id: 13, quiz_id: 2, answer: "correct", description: "Consider the following class. Which of the following code segments will construct a Book object m with a title of \"A Tale of Two Cities\" and rating of 4.7?"})
# CodeCorner.Repo.insert!(%CodeCorner.Class.QuizQuestion{id: 14, quiz_id: 2, answer: "rental.returnBook();rental.checkOutBook(2);", description: "Consider the following class definition. Assume that a BookRental object called rental has been properly declared and initialized. Which of the following statements are valid?"})
