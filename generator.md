```
mix phx.gen.html Class Lesson lessons order:integer name:string view:string
mix phx.gen.html Class Quiz quizzes lesson_id:integer order_id:integer name:string answer:string
mix phx.gen.html Class QuizResult quiz_results quiz_id:integer student_id:integer success:boolean submission:string errors:string
```

```
    resources "/lessons", LessonController
      resources "/quizzes", QuizController
  resources "/quiz_results", QuizResultController
```
