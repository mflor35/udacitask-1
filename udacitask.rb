require_relative 'todolist.rb'

# Creates a new todo list
my_todo = todolist.new
# Add four new items
my_todo.add_item()
my_todo.add_item()
my_todo.add_item()
# Print the list
my_todo.show()
# Delete the first item
my_todo.delete_item()
# Print the list
my_todo.show()
# Delete the second item
my_todo.delete_item()
# Print the list
my_todo.show()
# Update the completion status of the first item to complete
my_todo.mark_complete()
# Print the list
my_todo.show()
# Update the title of the list
my_todo.set_title()
# Print the list
my_todo.show()
