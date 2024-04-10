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
CodeCorner.Repo.insert!(%CodeCorner.Class.Lesson{id: 3, name: "String", order: 10, slug: "string"})
CodeCorner.Repo.insert!(%CodeCorner.Class.Lesson{id: 4, name: "Class", order: 15, slug: "class"})
CodeCorner.Repo.insert!(%CodeCorner.Class.Lesson{id: 5, name: "Method", order: 20, slug: "method"})
CodeCorner.Repo.insert!(%CodeCorner.Class.Lesson{id: 6, name: "Objects", order: 25, slug: "object"})
