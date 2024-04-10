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

CodeCorner.Repo.insert!(%CodeCorner.Class.Lesson{id: 1, name: "Data Types", order: 1, slug: "data_types"})

CodeCorner.Repo.insert!(%CodeCorner.Class.Lesson{id: 2, name: "Variables", order: 5, slug: "variables"})
# simple variable
CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 1, description: "Declare/Create a variable name total with the value of 23.87.", lesson_id: 2, group: "variable_simple", answer: "doubletotal=23.87"})
CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 2, description: "Declare/Create a variable name table with the value of 6.", lesson_id: 2, group: "variable_simple", answer: "inttable=6"})
CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 3, description: "Declare/Create a variable name year with the value of 2024", lesson_id: 2, group: "variable_simple", answer: "intyear=2024"})
CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 4, description: "Declare/Create a variable name tax with the value 1.37", lesson_id: 2, group: "variable_simple", answer: "doubletax=1.37"})
# no value
CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 5, description: "Declare a variable type boolean with the name paid to indicate if a table paid their tab.", lesson_id: 2, group: "variable_no_value", answer: "booleanpaid"})
CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 6, description: "Declare a variable type char named initial to indicate the server first name initial (one character).", lesson_id: 2, group: "variable_no_value", answer: "charinitial"})
CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 7, description: "Declare a variable type int named count to indicate the number of customer served.", lesson_id: 2, group: "variable_no_value", answer: "intcount"})
CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 8, description: "Declare a variable named check of the type integer.", lesson_id: 2, group: "variable_no_value", answer: "intcheck"})
# update
CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 9, description: "Given the code below, update the count to 2.", lesson_id: 2, group: "variable_update", answer: "count=2 count=count+1"})
CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 10, description: "Given the code below, update the total to equal to subtotal plus tax.", lesson_id: 2, group: "variable_update", answer: "total=subtotal+tax total=tax+subtotal"})
CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 11, description: "Given the code below, update the payment (for each person) to equal to the total / 3.", lesson_id: 2, group: "variable_update", answer: "total=payment/3"})
CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 12, description: "Given the code below, update the total to equal to subtotal.", lesson_id: 2, group: "variable_update", answer: "total=subtotal"})

CodeCorner.Repo.insert!(%CodeCorner.Class.Lesson{id: 3, name: "String", order: 10, slug: "string"})



CodeCorner.Repo.insert!(%CodeCorner.Class.Lesson{id: 4, name: "Class", order: 15, slug: "class"})
CodeCorner.Repo.insert!(%CodeCorner.Class.Lesson{id: 5, name: "Method", order: 20, slug: "method"})
CodeCorner.Repo.insert!(%CodeCorner.Class.Lesson{id: 6, name: "Objects", order: 25, slug: "object"})

# CodeCorner.Repo.insert!(%CodeCorner.Practices.Problem{id: 3, description: "", lesson_id: , group: "", answer: ""})
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
