require_relative 'todolist.rb'
# Creates a new todo list
my_todo = TodoList.new("Test List")
# Add four new items
my_todo.add_item("Task 1")
my_todo.add_item("Task 2")
my_todo.add_item("Task 3")
# Print the list
my_todo.show
# Delete the first item
my_todo.delete_item("Task 1")
# Print the list
my_todo.show()
# Delete the second item
my_todo.delete_item("Task 2")
# Print the list
my_todo.show()
# Update the completion status of the first item to complete
my_todo.mark_complete("Task 3")
# Print the list
my_todo.show()
# Update the title of the list
my_todo.set_title("My new title")
# Print the list
my_todo.show()
